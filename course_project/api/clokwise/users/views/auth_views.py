from datetime import datetime, timedelta

from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.permissions import AllowAny, IsAuthenticated
from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView
from rest_framework_simplejwt.exceptions import TokenError, InvalidToken
from rest_framework_simplejwt.tokens import RefreshToken, AccessToken
from django.utils.translation import gettext_lazy as _
from django.utils import timezone


from users.models import ConfirmationCode, ConfirmationCode, ConfirmationCodeType, User
from users.serializers.auth_serializers import BindEmailConfirmSerializer, LoginSerializer, RequestPasswordResetTokenSerializer, ResendConfirmationEmailSerializer, ResetPasswordSerializer, SignUpSerializer, UserIsAuthorizedSerializer
from users.utils import send_confirmation_email, send_reset_password_email


class IsAuthorizedView(APIView):
    permission_classes = [IsAuthenticated]

    def get(self, request):
        json = UserIsAuthorizedSerializer(instance=request.user).data
        return Response(json, status=status.HTTP_200_OK)

class LoginView(TokenObtainPairView):
    permission_classes = [AllowAny]
    serializer_class = LoginSerializer

    def post(self, request):
        serializer = self.get_serializer_class()(data=request.data)

        if serializer.is_valid():
            return Response(serializer.validated_data, status=status.HTTP_200_OK)
        else:
            return Response({"error": list(serializer.errors.values())[0]}, status=status.HTTP_400_BAD_REQUEST)
        

class TokenRefreshAPIView(TokenRefreshView):
    permission_classes = [AllowAny]

    def post(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)

        try:
            serializer.is_valid(raise_exception=True)
        except TokenError as e:
            return Response({"error": str(e)}, status=status.HTTP_400_BAD_REQUEST)

        data = serializer.validated_data
        user_id = AccessToken(data["access"])["user_id"]
        if User.objects.filter(id=user_id, is_active=True).exists():
            return Response(data, status=status.HTTP_200_OK)
        else:
            return Response({"error": _("No active account found with the given credentials.")}, status=status.HTTP_400_BAD_REQUEST)
        

class SignUpView(APIView):
    permission_classes = [AllowAny]

    def post(self, request):
        serializer = SignUpSerializer(data=request.data)
        if serializer.is_valid():
            user: User = serializer.save()

            json: dict = {
                "user": UserIsAuthorizedSerializer(instance=user).data,
            }

            return Response(json, status=status.HTTP_201_CREATED)
        else:
            return Response({"error": list(serializer.errors.values())[0]}, status=status.HTTP_400_BAD_REQUEST)
        

class BindEmailConfirmAPIView(APIView):
    permission_classes = [AllowAny]

    def post(self, request):
        serializer = BindEmailConfirmSerializer(data=request.data)
        if serializer.is_valid() and (confirm_email_request := ConfirmationCode.objects.filter(token=serializer.validated_data['token'], email=serializer.validated_data['email'], type=ConfirmationCodeType.CONFIRM_EMAIL).first()):
            user: User = confirm_email_request.user
            user.email = confirm_email_request.email
            user.is_verified_email = True
            user.save()
            ConfirmationCode.objects.filter(user=user, type=ConfirmationCodeType.CONFIRM_EMAIL).delete()

            refresh: RefreshToken = RefreshToken.for_user(user)

            json: dict = {
                "message": _("Адрес электронной почты подтверждён"),
                "user": UserIsAuthorizedSerializer(instance=user).data,
                "access_token": str(refresh.access_token),
                "refresh_token": str(refresh),
            }
            return Response(json, status=status.HTTP_200_OK)
        else:
            return Response({"error": _("Неверный код подтверждения")}, status=status.HTTP_403_FORBIDDEN)
        
class ResendConfirmationEmailAPIView(APIView):
    permission_classes = [AllowAny]

    def post(self, request):
        serializer = ResendConfirmationEmailSerializer(data=request.data)
        if not serializer.is_valid():
            return Response({"error": _("Неверный адрес электронной почты")}, status=status.HTTP_403_FORBIDDEN)
        
        tokens = ConfirmationCode.objects.filter(email=serializer.validated_data['email'], type=ConfirmationCodeType.CONFIRM_EMAIL).order_by("datetime_created")
        if not tokens.exists():
            return Response({"error": _("Неверный адрес электронной почты")}, status=status.HTTP_403_FORBIDDEN)
        
        token = tokens.first()
        if token.possible_resend_date > timezone.now():
            return Response({"error": "cooldown", "time_left": (token.possible_resend_date-timezone.now()).seconds}, status=status.HTTP_403_FORBIDDEN)
        
        send_confirmation_email(token.user)
            
        return Response({"resend_available": (timezone.now()+timedelta(seconds=ConfirmationCode.COOLDOWN)).isoformat()}, status=status.HTTP_200_OK)


class RequestPasswordResetTokenAPIView(APIView):
    permission_classes = [AllowAny]
    
    def post(self, request):
        serializer = RequestPasswordResetTokenSerializer(data=request.data)
        if not serializer.is_valid():
            return Response({"error": _("Неверный адрес электронной почты")}, status=status.HTTP_403_FORBIDDEN)
        
        user = User.objects.filter(email=serializer.validated_data['email']).first()
        if not user:
            return Response({"error": _("Неверный адрес электронной почты")}, status=status.HTTP_403_FORBIDDEN)

        tokens = ConfirmationCode.objects.filter(email=serializer.validated_data['email'], type=ConfirmationCodeType.RESET_PASSWORD).order_by("datetime_created")
        if tokens.exists():
            token = tokens.first()
            if token.possible_resend_date > timezone.now():
                return Response({"error": "cooldown", "time_left": (token.possible_resend_date-timezone.now()).seconds}, status=status.HTTP_403_FORBIDDEN)
            else:
                tokens.delete()
        
        reset_password_token: ConfirmationCode = ConfirmationCode.objects.create(user=user, email=user.email, type=ConfirmationCodeType.RESET_PASSWORD)
        send_reset_password_email(reset_password_token)

        return Response({"resend_available": (timezone.now()+timedelta(seconds=ConfirmationCode.COOLDOWN)).isoformat()}, status=status.HTTP_200_OK)

class ResetPasswordAPIView(APIView):
    permission_classes = [AllowAny]

    def post(self, request):
        serializer = ResetPasswordSerializer(data=request.data)
        if serializer.is_valid():
            reset_password_request = ConfirmationCode.objects.filter(token=serializer.validated_data['token'], email=serializer.validated_data['email'], type=ConfirmationCodeType.RESET_PASSWORD).first()
            if not reset_password_request:
                return Response({"error": _("Неверный код подтверждения")}, status=status.HTTP_403_FORBIDDEN)
            
            user: User = reset_password_request.user
            ConfirmationCode.objects.filter(user=user).delete()
            user.set_password(serializer.validated_data["new_password"])
            user.save()

            return Response({"message": _("Пароль успешно изменён")}, status=status.HTTP_200_OK)
        else:
            return Response({"error": serializer.errors}, status=status.HTTP_403_FORBIDDEN)