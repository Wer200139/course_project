from datetime import datetime
import uuid
from django.db.models import (
    Model,
    DateTimeField,
    TextField,
    BooleanField,
    ForeignKey,
    CASCADE,
    PROTECT,
    SET_NULL,
    ManyToManyField,
    UUIDField,
    CharField,
    FileField,
    TextChoices,
)
from django.utils.translation import gettext_lazy as _
from django.utils import timezone


from users.models import (
    User,
    ExpertSearchRequest,
)


class Chat(Model):
    datetime_created = DateTimeField(_("Дата создания"), null=False, blank=False, default=timezone.now)
    search_request = ForeignKey(ExpertSearchRequest, on_delete=PROTECT, related_name="chats", null=True, blank=True, verbose_name=_("Запрос"))
    participants = ManyToManyField(User, related_name="chats", verbose_name=_("Участники"))
    initiator = ForeignKey(User, null=True, blank=True, on_delete=PROTECT, related_name="initiated_chats", verbose_name=_("Инициатор"))
    confirmations = ManyToManyField(User, related_name="confirmed_chats", verbose_name=_("Подтвердившие диалог"), blank=True)
    is_closed = BooleanField(_("Завершён"), default=False, blank=True)
    expert = ForeignKey(User, on_delete=SET_NULL, blank=True, null=True, verbose_name=_("Эксперт"))
    is_support = BooleanField(_("Чат поддержки"), default=False, blank=True)
    declined_by = ForeignKey(User, on_delete=SET_NULL, blank=True, null=True, verbose_name=_("Отклонил"), related_name="declined_chats")
    declined_at = DateTimeField(_("Дата отклонения"), null=True, blank=True)
    closed_at = DateTimeField(_("Дата закрытия"), null=True, blank=True)

    def is_confirmed(self, user):
        return self.confirmations.filter(pk=user.id).exists()
    
    def is_confirmed_by_recipient(self, user):
        return self.confirmations.exclude(pk=user.id).exists()

    class Meta:
        verbose_name = _("Чат")
        verbose_name_plural = _("Чаты")

    def __str__(self):
        return f"Chat {self.id})"
    
class AttachmentType(TextChoices):
    FILE = "FILE", _("Файл")
    IMAGE = "IMAGE", _("Картинка")
    AUDIO = "AUDIO", _("Аудио")

class Attachment(Model):
    uuid = UUIDField(
        _("Attachment ID"),
        default=uuid.uuid4,
        editable=False,
        unique=True,
    )
    creator = ForeignKey(User, verbose_name=_("Создатель"), on_delete=PROTECT, related_name="uploaded_attachments")
    mime_type = CharField(_("MIME type"), blank=False, null=False, max_length=128)
    type = CharField(_("Тип вложения"), null=False, blank=False, max_length=64, choices=AttachmentType.choices, default=AttachmentType.FILE)
    file = FileField(
        verbose_name=_("File"),
        upload_to="attachments/",
    )
    chat = ForeignKey(Chat, on_delete=SET_NULL, related_name="attachments", null=True, blank=True)
    filename = CharField(_("Имя исходного файла"), null=True, blank=False, max_length=1024)

    @property
    def is_image(self):
        return self.mime_type.startswith("image")

    class Meta:
        verbose_name = _("Вложение")
        verbose_name_plural = _("Вложения")

class Message(Model):
    chat = ForeignKey(Chat, on_delete=CASCADE, related_name="messages")
    text = TextField(_("Текст"), null=True, blank=True)
    datetime_created = DateTimeField(_("Дата создания"), null=False, blank=False, default=timezone.now)
    datetime_edited = DateTimeField(_("Дата последнего изменения"), null=False, blank=False, default=timezone.now)
    from_user = ForeignKey(User, verbose_name=_("Отправитель"), on_delete=PROTECT, related_name="sent_messages")
    is_deleted = BooleanField(_("Удалено"), default=False)
    available_until = DateTimeField(_("Доступно до"), blank=True, null=True)
    attachments = ManyToManyField(Attachment, related_name="messages")

    @property
    def marked_as_deleted(self):
        if not self.is_deleted and self.available_until and self.available_until <= timezone.now():
            self.is_deleted = True
            self.save(update_fields=["is_deleted"])
        
        return self.is_deleted

    def get_datetime_read(self, user: User) -> datetime | None:
        read_record = self.read_times.filter(user=user).first()
        return read_record.datetime_read if read_record else None

    def get_datetime_read_by_recipient(self, sender: User) -> datetime | None:
        read_record = self.read_times.exclude(user=sender).first()
        return read_record.datetime_read if read_record else None

    class Meta:
        ordering = ("-datetime_created",)
        verbose_name = _("Сообщение")
        verbose_name_plural = _("Сообщения")

    def __str__(self):
        return f"message from {self.from_user.id}: {self.text}"


class MessageReadTime(Model):
    datetime_read = DateTimeField(_("Дата прочтения"), null=False, blank=False, default=timezone.now)
    message = ForeignKey(Message, on_delete=CASCADE, related_name="read_times")
    user = ForeignKey(User, on_delete=CASCADE, related_name="messages_read_times")

    class Meta:
        verbose_name = _("Время прочтения сообщения")
        verbose_name_plural = _("Время прочтения сообщений")
        unique_together = ["message", "user"]