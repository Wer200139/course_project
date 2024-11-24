from random import choices
import string
from datetime import datetime, timedelta

from django.contrib.auth.models import BaseUserManager, AbstractUser
from django.conf import settings
from django.utils import timezone
from django.core.cache import cache
from django.db.models import (
    CharField,
    TextField,
    DateTimeField,
    DateField,
    EmailField,
    ForeignKey,
    CASCADE,
    PROTECT,
    Model,   
    BooleanField,
    PositiveIntegerField,
    PositiveBigIntegerField,
    PositiveSmallIntegerField,
    URLField,
    TextChoices,    
    ImageField,
    SET_NULL,
    QuerySet,
    ExpressionWrapper,
    DurationField,
    F,
    Sum,
    FloatField,
    Q,
    Avg,
    ManyToManyField,
)
from django.core.validators import MinValueValidator, MaxValueValidator
from django.contrib.postgres.fields import HStoreField
from django.db.models.functions import (
    Now
)
from fcm_django.models import FCMDevice
from firebase_admin.messaging import (
    Message as Message,
    Notification as PushNotification,
    WebpushConfig,
    WebpushFCMOptions,
)

from django.core.validators import MinLengthValidator
from django.utils.translation import gettext_lazy as _

from loguru import logger
from phonenumber_field.modelfields import PhoneNumberField



class UserReviewType(TextChoices):
    CLIENT = "CLIENT", _("Заказчик")
    EXPERT = "EXPERT", _("Эксперт")



class UserManager(BaseUserManager):
    def create_user(self, email, first_name, last_name, profile_picture=None, password=None, is_superuser=False, is_staff=False, is_active=True):
        if not email:
            raise ValueError(_("Адрес электронной почты обязателен"))
        if not password:
            raise ValueError(_("Пароль обязателен"))
        if not first_name:
            raise ValueError(_("Имя обязательно"))
        if not last_name:
            raise ValueError(_("Фамилия обязательна"))

        user = self.model(
            email=self.normalize_email(email)
        )
        user.first_name = first_name
        user.last_name = last_name
        user.set_password(password)
        user.profile_picture = profile_picture
        user.is_superuser = is_superuser
        user.is_staff = is_staff
        user.active = is_active
        user.save(using=self._db)
        return user
        
    def create_superuser(self, email, first_name, last_name, profile_picture=None, password=None, **extra_fields):
        user = self.create_user(email, first_name, last_name, profile_picture, password, True, True)
        user.save()
        return user

class ProfileType(TextChoices):
    PERSON = "PERSON", _("Физическое лицо")
    COMPANY = "COMPANY", _("Компания")
    EXPERT = "EXPERT", _("Эксперт")


class UserAvatar(Model):
    image = ImageField(upload_to="avatars", verbose_name=_("Изображение"), blank=False, null=False)
    image_small = ImageField(upload_to="avatars", verbose_name=_("Уменьшенный вариант"), blank=False, null=False)
    is_preset = BooleanField(_("Доступен для выбора"), blank=True, default=False)
   
    class Meta:
        verbose_name = _("Аватар")
        verbose_name_plural = _("Аватары")

class User(AbstractUser):
    username = None
    first_name = CharField(_("Имя"), max_length=64, blank=False, null=False, validators=[MinLengthValidator(limit_value=1)])
    last_name = CharField(_("Фамилия"), max_length=64, blank=False, null=False, validators=[MinLengthValidator(limit_value=1)])
    email = EmailField(_("Адрес электронной почты"), blank=True, null=True, unique=True)
    phone_number = PhoneNumberField(null=True, blank=True)
    date_registered = DateTimeField(_("Дата регистрации"), default=timezone.now)
    is_verified_email = BooleanField(_("Адрес электронной почты подтверждён"), default=False)
    is_legal_entity = BooleanField(_("Юридическое лицо"), default=False)
    company_name = CharField(_("Название компании"), max_length=128, null=True, blank=True)
    company_inn = PositiveBigIntegerField(_("ИНН"), blank=True, null=True)
    company_website = URLField(_("Сайт компании"), blank=True, null=True, max_length=200)
    company_description = TextField(_("Описание компании"), max_length=4096, null=True, blank=True)
    avatar = ForeignKey(UserAvatar, null=True, blank=True, on_delete=SET_NULL)
    person_website = URLField(_("Персональный сайт"), blank=True, null=True, max_length=200)
    person_activity_description = TextField(_("Описание деятельности"), max_length=4096, null=True, blank=True)
    is_company_info_verified = BooleanField(_("Информация о организации подтверждена"), default=False, blank=True)
    is_company_info_verification_requested = BooleanField(_("Требуется верификация компании"), default=False, blank=True)
    subscription_until = DateTimeField(_("Дата окончания подписки"), null=True, blank=True, default=None)
    paid_users_for_view = ManyToManyField("self", blank=True, verbose_name=_("Оплатившие просмотр профиля"))

    objects = UserManager()

    USERNAME_FIELD = "email"
    EMAIL_FIELD = "email"
    
    REQUIRED_FIELDS = ["first_name", "last_name"]

    @property
    def has_person_profile_data(self):
        return True if (self.company_name and self.company_inn) else False

    @property
    def has_company_profile_data(self):
        return True if (self.company_website and self.person_activity_description) else False

    @property
    def main_profile_type(self):
        if (self.has_company_profile_data and self.has_person_profile_data) or (self.has_company_profile_data and not self.has_person_profile_data):
            return ProfileType.COMPANY
        else:
            return ProfileType.PERSON        
    
    @property
    def experience_segments(self):
        return ExpertExperienceSegment.objects.select_related(
            "experience_record", "experience_record__user"
        ).annotate(
            duration = ExpressionWrapper(F("date_end") - F("date_start"), output_field=DurationField())
        ).filter(experience_record__user=self)

    @property
    def experience(self):        
        total = self.experience_segments.aggregate(total=Sum("duration"))["total"]
        return round(total.days / 365.25, 3) if total else 0 

    @property
    def last_seen(self) -> datetime | None:
        return cache.get(f'last-seen-{self.id}')

    @property
    def is_online(self):
        last_seen = self.last_seen
        if last_seen is not None and timezone.now() < last_seen + timezone.timedelta(seconds=300):
            return True
        return False

    def get_rating(self, type: UserReviewType | None = None):
        conditions = Q()
        if type:
            conditions.add(Q(type=type), Q.AND)
        
        reviews = self.reviews_received.filter(conditions)
        return reviews.aggregate(avg_rating=Avg("rating"))["avg_rating"]

    def get_current_support_chat(self, create: bool = False, initiator: "User" = None):
        support_chat = self.chats.filter(is_support=True, is_closed=False).first()
        if not support_chat:
            if create:
                support_chat = self.chats.create(is_support=True, is_closed=False, initiator=initiator if initiator else self)
                support_chat.confirmations.add(self)

        return support_chat
    
    @property
    def has_subscription(self):
        return (self.subscription_until and self.subscription_until < timezone.now())
    
    class Meta:
        verbose_name = _("Пользователь")
        verbose_name_plural = _("Пользователи")


def generate_code(length: int = 6) -> str:
    return "".join(choices(string.digits, k=length))

class EducationLevel(Model):
    name = CharField(_("Название"), max_length=96, null=False, blank=False)
    order_number = PositiveIntegerField(_("Порядковый номер"), null=False, blank=False, default=0)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = _("Уровень образования")
        verbose_name_plural = _("Уровни образования")


class EducationDegree(Model):
    name = CharField(_("Название"), max_length=96, null=False, blank=False)
    order_number = PositiveIntegerField(_("Порядковый номер"), null=False, blank=False, default=0)

    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name = _("Учёная степень")
        verbose_name_plural = _("Учёные степени")


class ExpertEducationRecord(Model):
    user = ForeignKey(User, null=False, blank=False, on_delete=CASCADE, related_name="education_records")
    education_level = ForeignKey(EducationLevel, null=False, blank=False, on_delete=PROTECT)
    education_degree = ForeignKey(EducationDegree, null=True, blank=True, on_delete=PROTECT)
    institution_name = CharField(_("Название учебного заведения"), null=False, blank=False, max_length=256)
    department_name = CharField(_("Кафедра"), null=False, blank=False, max_length=256)
    speciality_name = CharField(_("Специальность"), null=False, blank=False, max_length=256)

    class Meta:
        verbose_name = _("Запись об образовании")
        verbose_name_plural = _("Записи об образовании")


class ExpertExperienceRecord(Model):
    user = ForeignKey(User, null=False, blank=False, on_delete=CASCADE, related_name="experience_records")
    organization_name = CharField(_("Название или описание организации"), null=False, blank=False, max_length=256)
    date_start = DateField(_("Дата начала работы"), null=False, blank=False)
    date_end = DateField(_("Дата окончания работы"), null=False, blank=False)
    position = CharField(_("Должность"), null=False, blank=False, max_length=256)

    class Meta:
        verbose_name = _("Запись опыта эксперта")
        verbose_name_plural = _("Записи опыта эксперта")
        

class ExperienceClassificatorType(TextChoices):
    INDUSTRY = "INDUSTRY", _("Отрасль")
    SUBINDUSTRY = "SUBINDUSTRY", _("Подотрасль")
    FUNCTION = "FUNCTION", _("Функция")
    SUBFUNCTION = "SUBFUNCTION", _("Подфункция")

class ExperienceClassificator(Model):
    name = CharField(_("Название"), max_length=96, null=False, blank=False)
    type = CharField(_("Тип"), choices=ExperienceClassificatorType.choices, null=False, blank=False, max_length=64)
    parent = ForeignKey("self", null=True, blank=True, related_name="children", on_delete=PROTECT, verbose_name=_("Родительский классификатор"))
    order_number = PositiveIntegerField(_("Порядковый номер"), null=False, blank=False, default=0)

    class Meta:
        verbose_name = _("Классификатор опыта")
        verbose_name_plural = _("Классификаторы опыта")

    def __str__(self):
        return self.name

class ExpertExperienceSegment(Model):
    experience_record = ForeignKey(ExpertExperienceRecord, null=False, blank=False, on_delete=CASCADE, related_name="segments")
    industry = ForeignKey(ExperienceClassificator, blank=False, null=False, on_delete=PROTECT, related_name="in_segments_as_industry")
    subindustry = ForeignKey(ExperienceClassificator, blank=False, null=False, on_delete=PROTECT, related_name="in_segments_as_subindustry")
    function = ForeignKey(ExperienceClassificator, blank=False, null=False, on_delete=PROTECT, related_name="in_segments_as_function")
    subfunction = ForeignKey(ExperienceClassificator, blank=False, null=False, on_delete=PROTECT, related_name="in_segments_as_subfunction")
    date_start = DateField(_("Дата начала"), null=False, blank=False)
    date_end = DateField(_("Дата окончания"), null=False, blank=False)
    description = TextField(_("Описание опыта"), null=False, blank=False, max_length=4096)

    def __str__(self):
        return f"{self.experience_record.user.email} - {self.date_start} {self.date_end}"

    class Meta:
        verbose_name = _("Сегмент опыта")
        verbose_name_plural = _("Сегменты опыта")

class ConfirmationCodeType(TextChoices):
    RESET_PASSWORD = "RESET_PASSWORD", _("Сброс пароля")
    CONFIRM_EMAIL = "CONFIRM_EMAIL", _("Подтверждение почты")
    UPDATE_PERSONAL_INFORMATION = "UPDATE_PERSONAL_INFORMATION", _("Редактирование основной информации профиля")


class ConfirmationCode(Model):
    COOLDOWN = 120

    datetime_created = DateTimeField(default=timezone.now, blank=True, verbose_name=_("Дата создания"))
    user = ForeignKey(User, on_delete=CASCADE, related_name="confirmation_codes")
    email = EmailField(_("Адрес электронной почты"))
    token = CharField(max_length=128, blank=False, default=generate_code)
    type = CharField(_("Тип"), choices=ConfirmationCodeType.choices, null=False, blank=False, max_length=64)

    class Meta:
        verbose_name = _("Код подтверждения")
        verbose_name_plural= _("Коды подтверждения")

    @property
    def possible_resend_date(self):
        return self.datetime_created+timedelta(seconds=self.COOLDOWN)

    def __str__(self):
        return self.email


class ExpertSearchRequestType(TextChoices):
    CLOSED = "CLOSED", _("Закрытый")
    PUBLIC = "PUBLIC", _("Общий")


class ExpertSearchRequest(Model):
    name = CharField(_("Название"), max_length=256, null=False, blank=False)
    creator = ForeignKey(User, null=False, blank=False, verbose_name=_("Заказчик"), on_delete=PROTECT)
    datetime_created = DateTimeField(_("Время создания"), blank=False, null=False, default=timezone.now)
    industry = ForeignKey(ExperienceClassificator, null=False, blank=False, on_delete=PROTECT, related_name="industry_expert_search_requests")
    subindustry = ForeignKey(ExperienceClassificator, null=True, blank=True, on_delete=PROTECT, related_name="subindustry_expert_search_requests")
    function = ForeignKey(ExperienceClassificator, null=True, blank=True, on_delete=PROTECT, related_name="function_expert_search_requests")
    subfunction = ForeignKey(ExperienceClassificator, null=True, blank=True, on_delete=PROTECT, related_name="subfunction_expert_search_requests")
    description = TextField(_("Описание задачи"), max_length=4096, blank=True, null=True)
    datetime_expire = DateTimeField(_("Время удаления"), blank=False, null=False, db_default=Now() + timedelta(days=7))
    is_active = BooleanField(_("Активен"), default=True, blank=True)
    type = CharField(_("Тип"), choices=ExpertSearchRequestType.choices, null=False, blank=False, max_length=64, default=ExpertSearchRequestType.PUBLIC)


    @property
    def target_classificator(self):
        if self.subfunction:
            return self.subfunction
        if self.function:
            return self.function
        if self.subindustry:
            return self.subindustry
        if self.industry:
            return self.industry
        
        return None

    class Meta:
        verbose_name = _("Запрос")
        verbose_name_plural = _("Запросы")

class ExpertSearchRequestExpertApplication(Model):
    expert = ForeignKey(User, verbose_name=_("Эксперт"), null=False, blank=False, related_name="applications", on_delete=CASCADE)
    request = ForeignKey(ExpertSearchRequest, verbose_name=_("Запрос"), null=False, blank=False, related_name="applications", on_delete=CASCADE)
    datetime_created = DateTimeField(_("Время создания"), blank=False, null=False, default=timezone.now)


class Notification(Model):
    header = TextField(_("Заголовок"), null=True, blank=True)
    text = TextField(_("Текст"))
    receiver = ForeignKey("users.User", on_delete=CASCADE, related_name="received_notifications")
    sender = ForeignKey("users.User", on_delete=CASCADE, related_name="sent_notifications", null=True, blank=True)
    datetime_created = DateTimeField(_("Дата создания"), default=timezone.now)
    other_data = HStoreField(_("Прочие данные"), blank=True, null=True)
    url = CharField(max_length=150, blank=True, null=True)
    image = CharField(_("Image URL"), max_length=200, blank=True, null=True)
    type = PositiveSmallIntegerField(_("Тип"), blank=False, null=False, default=0)
    is_read = BooleanField(blank=True, default=False)
    datetime_read = DateTimeField(_("Время прочтения"), default=None, blank=True, null=True)
    is_active = BooleanField(blank=True, default=True)
    send_firebase_notification = BooleanField(default=True)

    class Meta:
        verbose_name = _("Уведомление")
        verbose_name_plural = _("Уведомления")

    def __str__(self):
        return f"Уведомление для  {self.receiver} от {self.datetime_created}"
    
    @property
    def firebase_notification(self):
        return PushNotification(
            title=self.header or "Clokwise",
            body=self.text or None,
            image=self.image or None
        )

    @property
    def firebase_message(self):
        if self.send_firebase_notification:
            return Message(
                notification=self.firebase_notification,
                data=self.other_data
            )
        else:
            return Message(
                data=self.other_data
            )

    @classmethod
    def send_bulk(cls, notification: "Notification", recipients: "QuerySet[User]"):
        cls.objects.bulk_create([
            cls(
                header=notification.header,
                text=notification.text,
                receiver=recipient,
                url=notification.url,
                image=notification.image,
                type=notification.type,
                other_data=notification.other_data,
            )
            for recipient in recipients
        ])

        devices = FCMDevice.objects.filter(user__in=recipients)
        devices.send_message(notification.firebase_message)

    def send(self):
        self.save()
        if not self.other_data.get("notification_id"):
            self.other_data['notification_id'] = str(self.pk)
            self.save(update_fields=["other_data"])

        devices = FCMDevice.objects.filter(user=self.receiver)
        devices.send_message(self.firebase_message)


class UserReview(Model):
    reviewer = ForeignKey(User, on_delete=CASCADE, null=False, blank=False, verbose_name=_("Создатель"), related_name="reviews_sent")
    user = ForeignKey(User, on_delete=CASCADE, null=False, blank=False, related_name="reviews_received")
    rating = PositiveSmallIntegerField(_("Оценка"), null=True, blank=True, default=0, validators=[MinValueValidator(0), MaxValueValidator(5)])
    text = TextField(_("Текст отзыва"), null=True, blank=True)
    type = CharField(_("Тип"), choices=UserReviewType.choices, null=False, blank=False, max_length=64)
    chat = ForeignKey("chats.Chat", on_delete=PROTECT, blank=True, null=True, related_name="reviews")
    datetime_created = DateTimeField(_("Дата создания"), null=True, blank=True, default=timezone.now)

    class Meta:
        verbose_name = "Отзыв"
        verbose_name_plural = "Отзывы"
