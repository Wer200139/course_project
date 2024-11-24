
from datetime import timedelta
from urllib.parse import urljoin
from rest_framework.serializers import (
    ModelSerializer,
    Serializer,
    CharField,
    SerializerMethodField,
    DateTimeField,
    BooleanField,
)
from django.utils.translation import gettext_lazy as _
from django.db.models import Q

from users.models import User, UserReviewType
from chats.models import Attachment, Chat, Message
from users.serializers.get_serializers import ExpertSearchRequestSerializer, UserAvatarSerializer


class ChatMessageUserSerializer(ModelSerializer):

    class Meta:
        model = User
        fields = [
            "id",
            "first_name",
            "last_name",
            "company_name",
        ]

class ChatUserSerializer(ModelSerializer):
    avatar = UserAvatarSerializer()
    rating = SerializerMethodField()
    last_seen = DateTimeField()

    def __init__(self, instance, current_user: User = None, is_expert: bool = False, **kwargs):
        self.current_user: User | None = current_user
        self.is_expert = is_expert
        super().__init__(instance=instance, **kwargs)


    def get_rating(self, instance: User):
        if self.is_expert:
            return instance.get_rating(UserReviewType.EXPERT)

        return instance.get_rating(UserReviewType.CLIENT)
        
    class Meta:
        model = User
        fields = [
            "id",
            "first_name",
            "last_name",
            "avatar",
            "rating",
            "last_seen",
        ]

class ChatMessageSerializer(ModelSerializer):
    from_user = ChatMessageUserSerializer()
    attachments = SerializerMethodField()
    datetime_read = SerializerMethodField()
    text = SerializerMethodField()
    marked_as_deleted = BooleanField()
    current_user_is_expert = SerializerMethodField()

    def __init__(self, instance, current_user: User = None, **kwargs):
        self.current_user: User | None = current_user
        super().__init__(instance=instance, **kwargs)

    def get_text(self, instance):# -> Any | None:
        return None if instance.marked_as_deleted else instance.text

    def get_attachments(self, instance):
        return [] if instance.marked_as_deleted else AttachmentSerializer(instance.attachments, many=True).data 
    
    def get_datetime_read(self, instance):
        return instance.get_datetime_read_by_recipient(self.current_user) if self.current_user else None

    def get_current_user_is_expert(self, instance: Message):
        return instance.chat.expert == self.current_user

    class Meta:
        model = Message
        fields = [
            "id",
            "datetime_created",
            "text",
            "from_user",
            "attachments",
            "datetime_read",
            "available_until",
            "marked_as_deleted",
            "current_user_is_expert",
        ]

class FakeSupportChatMessageSerializer(ChatMessageSerializer):
    from_user = SerializerMethodField()

    def get_from_user(self, instance: Message):
        if instance.from_user == self.current_user:
            return ChatMessageUserSerializer(instance=self.current_user).data
        return None
    


class ChatSerializer(ModelSerializer):
    user = SerializerMethodField()
    search_request = ExpertSearchRequestSerializer()
    last_5_messages = SerializerMethodField()
    is_confirmed = SerializerMethodField()
    is_confirmed_by_recipient = SerializerMethodField()
    unread_messages_count = SerializerMethodField()
    has_review = SerializerMethodField()
    recipient_is_expert = SerializerMethodField()
    current_user_is_expert = SerializerMethodField()
    will_be_deleted_at = SerializerMethodField()

    def __init__(self, instance, current_user: User = None, **kwargs):
        self.current_user = current_user
        self.review = None
        super().__init__(instance=instance, **kwargs)

    def get_user(self, instance: Chat):
        user = instance.participants.exclude(pk=self.current_user.id).first()
        return ChatUserSerializer(instance=user, current_user=self.current_user, is_expert=instance.expert == user).data if user else None

    def get_is_confirmed(self, instance):
        return True if self.current_user and instance.is_confirmed(self.current_user) else False

    def get_is_confirmed_by_recipient(self, instance):
        return True if self.current_user and instance.is_confirmed_by_recipient(self.current_user) else False
        
    def get_last_5_messages(self, instance):
        messages = instance.messages.order_by("-datetime_created")[:5]
        return ChatMessageSerializer(instance=messages, current_user=self.current_user, many=True).data

    def get_unread_messages_count(self, instance: Chat):
        if not self.current_user:
            return 0
        
        return instance.messages.filter(~Q(from_user=self.current_user), ~Q(id__in=self.current_user.messages_read_times.values_list("message", flat=True))).count()

    def get_has_review(self, instance: Chat):
        if not self.current_user:
            return False
        self.review = instance.reviews.filter(reviewer=self.current_user).first()
        return True if self.review else False

    def get_recipient_is_expert(self, instance: Chat):
        if not self.current_user:
            return False
        
        return instance.expert != self.current_user

    def get_current_user_is_expert(self, instance: Chat):
        return instance.expert == self.current_user
    
    def get_will_be_deleted_at(self, instance: Chat):
        if not instance.is_closed:
            return None
        
        if instance.declined_at:
            return (instance.declined_at + timedelta(hours=24)).isoformat()
        
        self.review = instance.reviews.filter(reviewer=self.current_user).first()
        if self.review:
            return (self.review.datetime_created + timedelta(hours=24)).isoformat()

        return None


    class Meta:
        model = Chat
        fields = [
            "id",
            "user",
            "search_request",
            "last_5_messages",
            "is_confirmed",
            "is_confirmed_by_recipient",
            "unread_messages_count",
            "is_closed",
            "has_review",
            "recipient_is_expert",
            "current_user_is_expert",
            "will_be_deleted_at",
        ]



class FakeSupportChatSerializer(Serializer):
    id = SerializerMethodField()
    is_confirmed = SerializerMethodField()
    is_confirmed_by_recipient = SerializerMethodField(method_name="get_is_confirmed")
    unread_messages_count = SerializerMethodField()
    last_5_messages = SerializerMethodField()

    def __init__(self, current_user: User = None, **kwargs):
        self.current_user = current_user
        self.chats = self.get_support_chats()
        self.messages = self.get_messages_objects()
        super().__init__({}, **kwargs)

    def get_support_chats(self):
        return self.current_user.chats.filter(is_support=True)

    def get_messages_objects(self):
        return Message.objects.filter(chat__in=self.chats)

    def get_id(self, _instance):
        return 0
    
    def get_is_confirmed(self, _instance):
        return True
    
    def get_unread_messages_count(self, _instance):
        if not self.current_user:
            return 0
        
        return self.messages.filter(~Q(from_user=self.current_user), ~Q(id__in=self.current_user.messages_read_times.values_list("message", flat=True))).count()

    def get_last_5_messages(self, _instance):
        return FakeSupportChatMessageSerializer(instance=self.messages, current_user=self.current_user, many=True).data

    class Meta:
        fields = [
            "id",
            "is_confirmed",
            "is_confirmed_by_recipient",
            "unread_messages_count",
        ]


class AttachmentSerializer(ModelSerializer):
    id = CharField(source="uuid")

    class Meta:
        model = Attachment
        fields = [
            "id",
            "filename",
            "type",
            "mime_type",
        ]