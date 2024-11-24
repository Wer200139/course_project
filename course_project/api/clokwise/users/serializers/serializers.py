from rest_framework.serializers import (
    ModelSerializer,
    CharField,
    ValidationError,
    Serializer,
    IntegerField,
    SerializerMethodField,
    URLField,
    PrimaryKeyRelatedField,
)
from django.utils.translation import gettext_lazy as _
from django.contrib.auth.password_validation import validate_password

from users.models import ExpertEducationRecord, ExpertExperienceRecord, ExpertExperienceSegment, ExpertSearchRequest, User


class UserChangePasswordSerializer(Serializer):
    current_password = CharField(required=True, max_length=64)
    new_password = CharField(required=True, max_length=64)

    def validate(self, data):
        if not self.context['request'].user.check_password(data.get("current_password")):
            raise ValidationError({"current_password": _("Неверный пароль")})

        validate_password(data.get("new_password"))
        return data

    def update(self, instance, validated_data):
        instance.set_password(validated_data.get("new_password"))
        instance.save()
        return instance

    def create(self, validated_data):
        pass

    @property
    def data(self):
        return {'Success': True}
    

class UserUpdateProfileSerializer(ModelSerializer):
    confirmation_code = CharField(required=True)

    class Meta:
        model = User
        fields = [
            "first_name",
            "last_name",
            "phone_number",
            "email",
            "confirmation_code",
        ]


class ExpertEducationRecordSerializer(ModelSerializer):

    class Meta:
        model = ExpertEducationRecord
        fields = [
            "education_level",
            "education_degree",
            "department_name",
            "institution_name",
            "speciality_name",
        ]


class ExperienceSegmentSerializer(ModelSerializer):

    class Meta:
        model = ExpertExperienceSegment
        read_only_fields = ["experience_record"]
        fields = [
            "industry",
            "subindustry",
            "function",
            "subfunction",
            "date_start",
            "date_end",
            "description"
        ]


class ExperienceSerializer(ModelSerializer):
    segments = ExperienceSegmentSerializer(required=False, many=True)

    class Meta:
        model = ExpertExperienceRecord
        read_only_fields = ["user"]
        fields = [
            "segments",
            "organization_name",
            "date_start",
            "date_end",
            "position"
        ]

    def create(self, validated_data):
        segments = validated_data.pop("segments", None)
        instance =  ExpertExperienceRecord.objects.create(**validated_data)
        objects = [ExpertExperienceSegment(**segment, experience_record=instance) for segment in segments]
        objects = ExpertExperienceSegment.objects.bulk_create(objects)
        instance.segments.set(objects)
        return instance
        
    def update(self, instance: ExpertExperienceRecord, validated_data):
        instance.save()
        return instance



class UpdatePersonActivitySerializer(ModelSerializer):
    person_website = CharField(required=True)
    person_activity_description = CharField(required=True)

    class Meta:
        model = User
        fields = [
            "person_website",
            "person_activity_description",
        ]

class UpdateCompanyInformationSerializer(ModelSerializer):
    company_name = CharField(required=True)
    company_description = CharField(required=True)
    company_website = URLField(required=True)
    company_inn = IntegerField(required=True)

    class Meta:
        model = User
        fields = [
            "company_name",
            "company_inn",
            "company_website",
            "company_description",
        ]


class SetUserAvatarSerializer(ModelSerializer):

    class Meta:
        model = User
        fields = [
            "avatar"
        ]

class CreateGeneralRequestSerializer(ModelSerializer):

    class Meta:
        model = ExpertSearchRequest
        fields = [
            "name",
            "creator",
            "industry",
            "subindustry",
            "function",
            "subfunction",
            "description"
        ]

class CreateExpertSearchRequestSerializer(ModelSerializer):

    class Meta:
        model = ExpertSearchRequest
        fields = [
            "name",
            "creator",
            "industry",
            "subindustry",
            "function",
            "subfunction",
            "description",
            "type",
        ]



class ExpertSearchRequestExpertApplyViewSerializer(Serializer):
    request = PrimaryKeyRelatedField(required=True, queryset=ExpertSearchRequest.objects.filter())

class InviteExpertToRequestSerializer(Serializer):
    expert = PrimaryKeyRelatedField(required=True, queryset=User.objects.all())
    request = PrimaryKeyRelatedField(required=True, queryset=ExpertSearchRequest.objects.filter())
