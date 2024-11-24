
from datetime import timedelta
from urllib.parse import urljoin
from rest_framework.serializers import (
    ModelSerializer,
    Serializer,
    IntegerField,
    CharField,
    ListField
)
from django.utils.translation import gettext_lazy as _
from django.conf import settings
from django.db.models import Q, Sum
from django.utils import timezone

from users.models import UserReview

class SendMessageDeserializer(Serializer):
    text = CharField(required=False)
    chat_id = IntegerField()
    attachments = ListField(
        child=CharField(),
        required=False
    )


class FinishChatUserReviewSerializer(ModelSerializer):
    rating = IntegerField(required=True)
    text = CharField(required=True)

    class Meta:
        model = UserReview
        fields = [
            "rating",
            "text"
        ]

class UserReviewSerializer(ModelSerializer):
    rating = IntegerField(required=True)
    text = CharField(required=True)

    class Meta:
        model = UserReview
        fields = [
            "rating",
            "text"
        ]