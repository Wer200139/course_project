from datetime import timedelta

from django.http import Http404
from django.core.files.uploadedfile import InMemoryUploadedFile
from django.core.files import File

from rest_framework import status
from rest_framework.validators import ValidationError
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.permissions import AllowAny, IsAuthenticated
from django.utils.translation import gettext_lazy as _
from django.utils import timezone
from channels.layers import get_channel_layer
from asgiref.sync import async_to_sync
from chats.models import Attachment, AttachmentType, Chat, Message
from PIL import Image

from chats.serializers.get_serializers import AttachmentSerializer, ChatMessageSerializer, ChatSerializer, FakeSupportChatMessageSerializer
from chats.serializers.serializers import FinishChatUserReviewSerializer, SendMessageDeserializer, UserReviewSerializer
from chats.utils import detect_mime_type, get_extension, is_valid_image_pillow
from users.models import ExpertSearchRequest, ExpertSearchRequestExpertApplication, Notification, ProfileType, User, UserReviewType
from users.serializers.get_serializers import UserAvatarSerializer


class SendMessageView(APIView):
    permission_classes = [IsAuthenticated]

    def get_attachments(self, request):
        try:
            attachments = Attachment.objects.filter(uuid__in=request.data.get("attachments"))
            if not attachments.count():
                raise ValidationError({"error": _("Invalid attachment ID")})   
            
            return attachments
        except:
            raise ValidationError({"error": _("Invalid attachment ID")})   


    def post(self, request):
        serializer = SendMessageDeserializer(data=request.data)
        if not serializer.is_valid():
            return Response({
                "error": "Invalid message"
            }, status=status.HTTP_400_BAD_REQUEST)
        data = serializer.validated_data
        if (chat_id := data.get("chat_id")) != 0:
            chat: Chat = self.request.user.chats.filter(pk=chat_id).first()
            if not chat:
                return Response({
                    "error": _("Чат не найден")
                }, status=status.HTTP_400_BAD_REQUEST)
                

            if not chat.is_confirmed_by_recipient(request.user):
                if chat.is_confirmed(request.user):
                    return Response({
                        "error": _("Собеседник не принял диалог")
                    }, status=status.HTTP_400_BAD_REQUEST)
                
            if not chat.is_confirmed(request.user):
                chat.confirmations.add(request.user)
                #TODO refresh sock

            if chat.is_closed:
                return Response({
                    "error": _("Чат закрыт")
                }, status=status.HTTP_400_BAD_REQUEST)
                
            if not request.data.get("text") and not request.data.get("attachments"):
                return Response(status=status.HTTP_400_BAD_REQUEST)    

            message: Message = request.user.sent_messages.create(
                chat=chat,
                text=data.get("text")
            )

            if request.data.get("attachments"):
                attachments = self.get_attachments(request)
                message.attachments.add(*attachments)

            serialized_message = ChatMessageSerializer(instance=message, current_user=request.user).data

            layer = get_channel_layer()
            for recipient in chat.participants.all():
                serialized_message_for_recipient = ChatMessageSerializer(instance=message, current_user=recipient).data
                group_name = f"chats_user_{recipient.id}"
                async_to_sync(layer.group_send)(
                    group_name,
                    message={
                        "type": "new_message",
                        "data": {
                            "type": "new_message",
                            "chat_id": chat.id,
                            "message": serialized_message,
                        },
                    },
                )
                if recipient == request.user:
                    continue
                
                name = request.user.get_full_name() if request.user.main_profile_type == ProfileType.PERSON else request.user.company_name
                avatar = UserAvatarSerializer(instance=request.user.avatar).get_image_small(instance=request.user.avatar) if request.user.avatar else ""

                notification_text = message.text if message.text else message.attachments.first().filename

                notification_data = {
                    "type": "new_chat_message",
                    "chat_id": str(chat.id),
                    "text": notification_text if notification_text else "",
                    "current_user_is_expert": str(recipient == chat.expert),
                    "name": name,
                    "avatar": avatar,
                }
                notification = Notification(receiver=recipient, text=notification_text, other_data=notification_data, send_firebase_notification=False)
                notification.send()
        else:
            chat = request.user.get_current_support_chat(create=True)
            message = request.user.sent_messages.create(
                chat=chat,
                text=data.get("text")
            )
            if request.data.get("attachments"):
                attachments = self.get_attachments(request)
                message.attachments.add(*attachments)
            serialized_message = FakeSupportChatMessageSerializer(instance=message, current_user=request.user).data

        return Response(serialized_message)


class ConfirmChattingRequestView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request, chat_id: int):
        chat = request.user.chats.filter(pk=chat_id).first()
        if not chat:
            return Response({"error": _("Чат не найден")}, status=status.HTTP_400_BAD_REQUEST)
        
        if chat.is_confirmed(request.user):
            return Response({"error": _("Вы уже начали этот диалог")}, status=status.HTTP_400_BAD_REQUEST)
            
        chat.confirmations.add(request.user)


        layer = get_channel_layer()
        for recipient in chat.participants.all():
            serialized_chat = ChatSerializer(instance=chat, current_user=recipient).data

            group_name = f"chats_user_{recipient.id}"
            async_to_sync(layer.group_send)(
                group_name,
                message={
                    "type": "message_to_send",
                    "data": {
                        "type": "chatting_confirmed",
                        "chat": serialized_chat
                    },
                },
            )


        return Response()
    
class DeclineChattingRequestView(APIView):
    def post(self, request, chat_id: int):
        chat: Chat = request.user.chats.filter(pk=chat_id).first()
        if not chat:
            return Response({"error": _("Чат не найден")}, status=status.HTTP_400_BAD_REQUEST)

        if chat.is_closed or chat.declined_by:
            return Response({"error": _("Чат уже закрыт")}, status=status.HTTP_400_BAD_REQUEST)


        if chat.is_confirmed(request.user):
            return Response({"error": _("Вы уже приняли этот диалог")}, status=status.HTTP_400_BAD_REQUEST)
            
        chat.declined_by = request.user
        chat.is_closed = True
        chat.closed_at = timezone.now()
        chat.declined_at = timezone.now()

        chat.save(update_fields=["declined_by", "declined_at", "is_closed", "closed_at"])

        layer = get_channel_layer()
        for recipient in chat.participants.all():
            serialized_chat = ChatSerializer(instance=chat, current_user=recipient).data

            group_name = f"chats_user_{recipient.id}"
            async_to_sync(layer.group_send)(
                group_name,
                message={
                    "type": "message_to_send",
                    "data": {
                        "type": "chatting_declined",
                        "chat": serialized_chat
                    },
                },
            )


        return Response()
    


class StartChattingView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request, user_id: int, application_id: int = None):
        user = User.objects.filter(pk=user_id).first()

        if not user:
            return Response({"error": _("Пользователь не найден")}, status=status.HTTP_400_BAD_REQUEST)

        if user == request.user:
            return Response({"error": _("Вы не можете начать чат с самим собой")}, status=status.HTTP_400_BAD_REQUEST)

        if user.id == request.user.id:
            return Response(status=status.HTTP_400_BAD_REQUEST)
        

        application = None
        if application_id:
            application = ExpertSearchRequestExpertApplication.objects.filter(request__creator=request.user, pk=application_id).first()
            if not application:
                return Response({"error": _("Отклик не найден")}, status=status.HTTP_400_BAD_REQUEST)

        
        existing_chats = request.user.chats.filter().filter(participants=user)
        if application:
            early_closed_chats = existing_chats.filter(is_closed=True)
            if early_closed_chats.exists():
                return Response({"error": _("Вы не можете снова начать общение по данному запросу"), "code": "CHAT_CLOSED_RECENTLY"}, status=status.HTTP_400_BAD_REQUEST)
            existing_chats = existing_chats.filter(search_request=application.request)
        else:
            early_closed_chats = existing_chats.filter(closed_at__gte=timezone.now()-timedelta(hours=24), is_closed=True)
            if early_closed_chats.exists():
                return Response({"error": _("Вы не можете начать общение раньше чем через 24 часа после окончания"), "code": "CHAT_CLOSED_RECENTLY"}, status=status.HTTP_400_BAD_REQUEST)
            existing_chats = existing_chats.filter(search_request__isnull=True)
            
        existing_chats = existing_chats.filter(is_closed=False)

        if existing_chats.exists():
            return Response({"error": _("Вы уже начали общение"), "code": "CHAT_ALREADY_EXISTS", "chat_id": existing_chats.first().id}, status=status.HTTP_400_BAD_REQUEST)
        
        if application:
            chat = request.user.chats.create(initiator = request.user, expert=user, search_request=application.request)
        else:
            chat = request.user.chats.create(initiator = request.user, expert=user)

        chat.participants.add(user)
        chat.participants.add(request.user)
        if application:
            chat.confirmations.add(request.user)

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
        

        return Response({"chat_id": chat.id})


class FinishChattingView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request, chat_id):
        chat: Chat | None = request.user.chats.filter(pk=chat_id).first()

        if not chat:
            return Response({"error": _("Чат не найден")}, status=status.HTTP_400_BAD_REQUEST)
            
        #if not chat.is_confirmed(request.user): # disabled as requested
        #   return Response(status=status.HTTP_400_BAD_REQUEST)
            
        if not chat.is_confirmed_by_recipient(request.user):
            return Response(status=status.HTTP_400_BAD_REQUEST)
            
        if chat.is_closed:
            return Response({"error": _("Диалог уже завершён")}, status=status.HTTP_400_BAD_REQUEST)

        if request.data:
            serializer = FinishChatUserReviewSerializer(data=request.data)
            if not serializer.is_valid():
                return Response({"errors": serializer.errors}, status=status.HTTP_400_BAD_REQUEST)

            if chat.search_request and chat.search_request.creator == request.user:
                review_type = UserReviewType.EXPERT
            else:
                review_type = UserReviewType.CLIENT

            serializer.save(reviewer=request.user, type=review_type, user=chat.participants.exclude(pk=request.user.id).first(), chat=chat)

        chat.is_closed = True
        chat.closed_at = timezone.now()
        chat.save(update_fields=["is_closed", "closed_at"])


        layer = get_channel_layer()
        for recipient in chat.participants.all():

            group_name = f"chats_user_{recipient.id}"
            async_to_sync(layer.group_send)(
                group_name,
                message={
                    "type": "message_to_send",
                    "data": {
                        "type": "chat_closed",
                        "chat_id": chat.id
                    },
                },
            )

        return Response()


class DeleteMessageView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request, message_id: int):
        message = request.user.sent_messages.filter(pk=message_id).first()
        if not message:
            return Response({"error": _("Сообщение не найдено")}, status=status.HTTP_400_BAD_REQUEST)

        if message.is_deleted:
            return Response({"error": _("Сообщение уже удалено")}, status=status.HTTP_400_BAD_REQUEST)
            
        message.is_deleted = True
        message.save(update_fields=["is_deleted"])
        layer = get_channel_layer()
        for recipient in message.chat.participants.all():
            serialized_message = ChatMessageSerializer(instance=message, current_user=recipient).data
            group_name = f"chats_user_{recipient.id}"
            async_to_sync(layer.group_send)(
                group_name,
                message={
                    "type": "new_message",
                    "data": {
                        "type": "message_updated",
                        "chat_id": message.chat.id,
                        "message": serialized_message,
                    },
                },
            )

        return Response()
    

class SendReviewView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request, chat_id):
        chat: Chat | None = request.user.chats.filter(pk=chat_id).first()

        if not chat:
            return Response({"error": _("Чат не найден")}, status=status.HTTP_400_BAD_REQUEST)
            
        if not chat.is_confirmed(request.user):
            return Response(status=status.HTTP_400_BAD_REQUEST)
            
        if not chat.is_confirmed_by_recipient(request.user):
            return Response(status=status.HTTP_400_BAD_REQUEST)
            
        if not chat.is_closed:
            return Response({"error": _("Диалог не завершён")}, status=status.HTTP_400_BAD_REQUEST)

        if chat.reviews.filter(reviewer=request.user).exists():
            return Response({"error": _("Вы уже оставили отзыв")}, status=status.HTTP_400_BAD_REQUEST)
            
        recipient = chat.participants.exclude(pk=request.user.id).first()
        if not recipient:
            return Response(status=status.HTTP_400_BAD_REQUEST)
            
        serializer = UserReviewSerializer(data=request.data)
        if not serializer.is_valid():
            return Response({"errors": serializer.errors}, status=status.HTTP_400_BAD_REQUEST)

        if chat.search_request and chat.search_request.creator == request.user:
            review_type = UserReviewType.EXPERT
        else:
            review_type = UserReviewType.CLIENT

        serializer.save(reviewer=request.user, type=review_type, user=recipient, chat=chat)
        return Response()



class UploadAttachmentFileView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request, chat_id: int):
        user: User = request.user

        file: InMemoryUploadedFile | None = request.data.get("file")
        if file is None:
            return Response(status=status.HTTP_400_BAD_REQUEST)
        
        is_image = is_valid_image_pillow(file)
        mime_type = detect_mime_type(file)
        attachment = Attachment.objects.create(
            mime_type=mime_type,
            creator=user,
            type=AttachmentType.IMAGE if is_image else AttachmentType.FILE,
            filename=file.name
        )
        extension = get_extension(file)
        attachment.file = File(file, name=f"{attachment.uuid}.{extension}")

        attachment.save(update_fields=['file'])

        return Response(
            AttachmentSerializer(instance=attachment).data
        )