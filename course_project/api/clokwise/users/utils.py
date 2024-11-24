from django.template.loader import render_to_string
from django.utils.html import strip_tags
from django.core.mail import send_mail
from django.utils.translation import gettext_lazy as _

from users.models import ConfirmationCode, ConfirmationCode, ConfirmationCodeType, User
from core.settings.base import (
    SERVER_EMAIL_USERNAME,
    SERVER_EMAIL_PASSWORD,
    DOMAIN,
)

def send_confirmation_email(user) -> int:
    tokens = ConfirmationCode.objects.filter(user=user, email=user.email, type=ConfirmationCodeType.CONFIRM_EMAIL)
    if tokens.exists():
        tokens.delete()

    bind_email_token: ConfirmationCode = ConfirmationCode.objects.create(user=user, email=user.email, type=ConfirmationCodeType.CONFIRM_EMAIL)
    html_message: str = render_to_string(
        "confirm_email_letter.html",
        context={"code": bind_email_token.token},
    )
    text_message: str = strip_tags(html_message)

    result = send_mail( #TODO task
        _("Подтверждение регистрации"),
        text_message,
        from_email=f"{SERVER_EMAIL_USERNAME}",
        recipient_list=[user.email],
        fail_silently=False,
        auth_user=SERVER_EMAIL_USERNAME,
        auth_password=SERVER_EMAIL_PASSWORD,
        html_message=html_message,
    )
    return result


def send_reset_password_email(code: ConfirmationCode) -> int:
    html_message: str = render_to_string(
        "reset_password_letter.html",
        context={"code": code.token},
    )
    text_message: str = strip_tags(html_message)

    result = send_mail( #TODO task
        _("Сброс пароля"),
        text_message,
        from_email=f"{SERVER_EMAIL_USERNAME}",
        recipient_list=[code.email],
        fail_silently=False,
        auth_user=SERVER_EMAIL_USERNAME,
        auth_password=SERVER_EMAIL_PASSWORD,
        html_message=html_message,
    )
    return result


def send_confirm_profile_edit_email(code: ConfirmationCode) -> int:
    html_message: str = render_to_string(
        "confirm_profile_edit_letter.html",
        context={"code": code.token},
    )
    text_message: str = strip_tags(html_message)

    result = send_mail( #TODO task
        _("Редактирование профиля"),
        text_message,
        from_email=f"{SERVER_EMAIL_USERNAME}",
        recipient_list=[code.email],
        fail_silently=False,
        auth_user=SERVER_EMAIL_USERNAME,
        auth_password=SERVER_EMAIL_PASSWORD,
        html_message=html_message,
    )
    return result
    