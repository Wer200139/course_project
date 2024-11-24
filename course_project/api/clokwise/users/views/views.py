from datetime import timedelta, datetime

from rest_framework import status
from rest_framework.views import APIView
from rest_framework.generics import UpdateAPIView
from rest_framework.response import Response
from rest_framework.permissions import AllowAny, IsAuthenticated
from django.utils.translation import gettext_lazy as _, gettext
from django.utils import timezone
from channels.layers import get_channel_layer
from asgiref.sync import async_to_sync


from chats.models import Chat
from chats.serializers.get_serializers import ChatSerializer
from users.models import ConfirmationCode, ConfirmationCodeType, ExpertExperienceSegment, ExpertSearchRequest, ExpertSearchRequestExpertApplication, ExpertSearchRequestType, Notification, User
from users.serializers.get_serializers import OwnExpertSearchRequestSerializer
from users.serializers.serializers import CreateExpertSearchRequestSerializer, CreateGeneralRequestSerializer, ExperienceSerializer, ExpertEducationRecordSerializer, ExpertSearchRequestExpertApplyViewSerializer, InviteExpertToRequestSerializer, SetUserAvatarSerializer, UpdateCompanyInformationSerializer, UpdatePersonActivitySerializer, UserChangePasswordSerializer, UserUpdateProfileSerializer
from users.utils import send_confirm_profile_edit_email


class ChangePasswordView(UpdateAPIView):
    serializer_class = UserChangePasswordSerializer
    model = User
    permission_classes = (IsAuthenticated,)

    def get_object(self, queryset=None):
        return self.request.user


class UpdateProfileView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request):
        serializer = UserUpdateProfileSerializer(instance=request.user, data=request.data)
        if not serializer.is_valid():
            return Response({"error": list(serializer.errors.values())[0][0]}, status=status.HTTP_400_BAD_REQUEST)
        
        confirmation_codes = ConfirmationCode.objects.filter(user=request.user, token=serializer.validated_data["confirmation_code"], type=ConfirmationCodeType.UPDATE_PERSONAL_INFORMATION)
        if not confirmation_codes.first():
            return Response({"error": _("Неверный код подтверждения")}, status=status.HTTP_403_FORBIDDEN)

        confirmation_codes.delete()

        serializer.save()
        return Response(status=status.HTTP_200_OK)
            
        
class RequestProfileEditConfirmationCodeView(APIView):

    permission_classes = [IsAuthenticated]
    def post(self, request):
        confirmation_codes = ConfirmationCode.objects.filter(user=request.user, type=ConfirmationCodeType.UPDATE_PERSONAL_INFORMATION).order_by("datetime_created")
        if confirmation_codes.exists():
            last_code = confirmation_codes.first()
            if last_code.possible_resend_date > timezone.now():
                return Response({"error": "cooldown", "time_left": (last_code.possible_resend_date-timezone.now()).seconds}, status=status.HTTP_403_FORBIDDEN)
            else:
                confirmation_codes.delete()
        
        confirmation_code: ConfirmationCode = ConfirmationCode.objects.create(user=request.user, email=request.user.email, type=ConfirmationCodeType.UPDATE_PERSONAL_INFORMATION)
        send_confirm_profile_edit_email(confirmation_code)

        return Response({"resend_available": (timezone.now()+timedelta(seconds=ConfirmationCode.COOLDOWN)).isoformat()}, status=status.HTTP_200_OK)


class UpdateEducationView(APIView):
    permission_classes = [IsAuthenticated]
    
    def post(self, request):
        serializer = ExpertEducationRecordSerializer(data=request.data, many=True)
        if not serializer.is_valid():
            return Response(status=status.HTTP_400_BAD_REQUEST)
        

        request.user.education_records.all().delete()
        serializer.save(user=request.user)


        return Response(status=status.HTTP_200_OK)
    
class UpdateExpertExperienceView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request):
        serializer = ExperienceSerializer(data=request.data, many=True)
        if not serializer.is_valid():
            return Response(status=status.HTTP_400_BAD_REQUEST)
    
        request.user.experience_records.all().delete()
        serializer.save(user=request.user)
        return Response(status=status.HTTP_200_OK)


class UpdatePersonActivityInformationView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request):
        serializer = UpdatePersonActivitySerializer(data=request.data, instance=request.user)
        if not serializer.is_valid():
            return Response({"errors": serializer.errors}, status=status.HTTP_400_BAD_REQUEST)

        serializer.save()
        return Response(status=status.HTTP_200_OK)

class UpdateCompanyInformationView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request):
        serializer = UpdateCompanyInformationSerializer(data=request.data, instance=request.user)
        if not serializer.is_valid():
            return Response({"errors": serializer.errors}, status=status.HTTP_400_BAD_REQUEST)

        serializer.save(is_company_info_verified=False, is_company_info_verification_requested=False)
        return Response(status=status.HTTP_200_OK)
    
class RequestCompanyInformationVerificationView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request):
        user = User.objects.get(id=request.user.id)
        if not (user.company_inn and user.company_name):
            return Response({"errors": _("Информация об организации не заполнена")}, status=status.HTTP_400_BAD_REQUEST)
        
        if user.is_company_info_verified:
            return Response({"errors": _("Организация уже подтверждена")}, status=status.HTTP_400_BAD_REQUEST)
        
        if user.is_company_info_verification_requested:
            return Response({"errors": _("Запрос на подтверждение организации был отправлен ранее")}, status=status.HTTP_400_BAD_REQUEST)


        
        user.is_company_info_verification_requested = True
        user.save(update_fields=["is_company_info_verification_requested"])

        return Response(status=status.HTTP_200_OK)


class SetUserAvatarView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request):
        serializer = SetUserAvatarSerializer(data=request.data, instance=request.user)
        if not serializer.is_valid():
            return Response({"errors": serializer.errors}, status=status.HTTP_400_BAD_REQUEST)

        serializer.save()
        return Response(status=status.HTTP_200_OK)
    
class CreateGeneralRequestView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request):
        data = request.data
        data['creator'] = request.user.id
        serializer = CreateGeneralRequestSerializer(data=request.data)
        if not serializer.is_valid():
            return Response({"errors": serializer.errors}, status=status.HTTP_400_BAD_REQUEST)

        expert_request = serializer.save(type=ExpertSearchRequestType.PUBLIC)
        target_classificator = expert_request.target_classificator

        #TODO: offload
        segments = ExpertExperienceSegment.objects.filter(**{str(target_classificator.type).lower(): target_classificator}).select_related(
            "experience_record__user"
        ).order_by("experience_record__user").distinct("experience_record__user").values_list("experience_record__user", flat=True)
        users = User.objects.filter(pk__in=segments)
        notification = Notification(header=gettext("Создан новый запрос"), text=gettext("Создан новый запрос {name}").format(name=expert_request.name), other_data={"type": "new_general_request", "request_id": str(expert_request.id)})
        Notification.send_bulk(notification, users)

        return Response(status=status.HTTP_200_OK)
    

class CreateExpertSearchRequestView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request):
        data = request.data
        data['creator'] = request.user.id
        serializer = CreateExpertSearchRequestSerializer(data=request.data)
        if not serializer.is_valid():
            return Response({"errors": serializer.errors}, status=status.HTTP_400_BAD_REQUEST)

        expert_request = serializer.save()
        target_classificator = expert_request.target_classificator

        #TODO: offload
        if expert_request.type == ExpertSearchRequestType.PUBLIC:
            segments = ExpertExperienceSegment.objects.filter(**{str(target_classificator.type).lower(): target_classificator}).select_related(
                "experience_record__user"
            ).order_by("experience_record__user").distinct("experience_record__user").values_list("experience_record__user", flat=True)
            users = User.objects.filter(pk__in=segments)
            notification = Notification(header=gettext("Создан новый запрос"), text=gettext("Создан новый запрос {name}").format(name=expert_request.name), other_data={"type": "new_general_request", "request_id": str(expert_request.id)})
            Notification.send_bulk(notification, users)

        data = OwnExpertSearchRequestSerializer(instance=expert_request, current_user=request.user).data
        return Response(data, status=status.HTTP_200_OK)


class ExpertSearchRequestExpertApplyView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request):
        request_serializer = ExpertSearchRequestExpertApplyViewSerializer(data=request.data)
        if not request_serializer.is_valid():
            return Response(status=status.HTTP_400_BAD_REQUEST)
        data = request_serializer.validated_data

        search_request = ExpertSearchRequest.objects.get(pk=data["request"].pk)
        if search_request.creator == request.user:
            return Response({"error": _("Вы не можете откликнуться на свой запрос")}, status=status.HTTP_400_BAD_REQUEST)
    
        if not search_request.is_active:
            return Response({"error": _("Запрос уже истёк")}, status=status.HTTP_400_BAD_REQUEST)
        
        if search_request.applications.filter(expert=request.user).exists():
            return Response({"error": _("Вы уже откликнулись на данный запрос")}, status=status.HTTP_400_BAD_REQUEST)

        ExpertSearchRequestExpertApplication.objects.create(expert=request.user, request=search_request)

        notification = Notification(receiver=search_request.creator, text=_('У Вас новый отклик на запрос "{request_name}"').format(request_name=search_request.name), other_data={"type": "new_request_application", "request_id": str(search_request.id)})
        notification.send()
        return Response(status=status.HTTP_200_OK)
    
class InviteExpertToRequestView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request):
        serializer = InviteExpertToRequestSerializer(data=request.data)
        if not serializer.is_valid():
            return Response(status=status.HTTP_400_BAD_REQUEST)
        
        search_request = ExpertSearchRequest.objects.filter(creator=request.user, pk=request.data.get("request")).first()
        if not search_request:
            return Response({"error": "Запрос не найден"}, status=status.HTTP_400_BAD_REQUEST)

        if not search_request.is_active:
            return Response({"error": "Запрос уже закрыт"}, status=status.HTTP_400_BAD_REQUEST)

        expert = User.objects.filter(pk=request.data.get("expert")).first()
        if not expert:
            return Response({"error": _("Эксперт не найден")}, status=status.HTTP_400_BAD_REQUEST)
        
        if expert == request.user:
            return Response({"error": _("Вы не можете пригласить самого себя")}, status=status.HTTP_400_BAD_REQUEST)

        existing_chats = request.user.chats.filter().filter(participants=expert, search_request=search_request)

        if existing_chats.exists():
            return Response({"error": "Вы уже пригласили этого эксперта"}, status=status.HTTP_400_BAD_REQUEST)
    
        chat = Chat.objects.create(
            search_request = search_request,
            initiator = request.user,
            expert = expert
        )
        
        chat.confirmations.add(request.user)
        chat.participants.add(request.user)
        chat.participants.add(expert)

        layer = get_channel_layer()
        for recipient in chat.participants.all():
            serialized_chat = ChatSerializer(instance=chat, current_user=recipient).data

            group_name = f"chats_user_{recipient.id}"
            async_to_sync(layer.group_send)(
                group_name,
                message={
                    "type": "message_to_send",
                    "data": {
                        "type": "new_chat",
                        "chat": serialized_chat
                    },
                },
            )
        

        notification = Notification(receiver=expert, text=_('Вас пригласили на задачу "{request_name}"').format(request_name=search_request.name), other_data={"type": "invited_to_request", "request_id": str(search_request.id)})
        notification.send()

        return Response(status=status.HTTP_200_OK)
    

class TestProlongSubscriptionView(APIView):
    permission_classes = [IsAuthenticated]
    
    def post(self, request):
        prev_date = request.user.subscription_until if request.user.subscription_until else timezone.now()
        request.user.subscription_until = prev_date + timedelta(days=30)
        request.user.save(update_fields=["subscription_until"])

        return Response({"subscription_until": request.user.subscription_until})
    

class TestPayForProfileViewView(APIView):
    permission_classes = [IsAuthenticated]
    
    def post(self, request, user_id: int):
        if request.user.id == user_id:
            return Response({"error": "Нельзя оплатить просмотр своего же профиля "}, status=status.HTTP_400_BAD_REQUEST)
        user = User.objects.filter(pk=user_id).first()
        if not user:
            return Response({"error": "Пользователь не найден"}, status=status.HTTP_400_BAD_REQUEST)

        if user.paid_users_for_view.filter(id=request.user.id).exists():
            return Response({"error": "Просмотр профиля уже оплачен"}, status=status.HTTP_400_BAD_REQUEST)
        
        user.paid_users_for_view.add(request.user)

        return Response()
    

class TestPayForBoostResponseView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request, chat_id):
        chat = request.user.chats.filter(pk=chat_id).first()
        if not chat:
            return Response({"error": "Чат не найден"}, status=status.HTTP_400_BAD_REQUEST)
        return Response()