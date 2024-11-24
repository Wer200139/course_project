
from datetime import timedelta
from urllib.parse import urljoin
from rest_framework.serializers import (
    ModelSerializer,
    Serializer,
    IntegerField,
    CharField,
    PrimaryKeyRelatedField,
    SerializerMethodField,
    FloatField,
    DateTimeField,
)
from django.utils.translation import gettext_lazy as _
from django.conf import settings
from django.db.models import Q, Sum

from users.models import EducationDegree, EducationLevel, ExperienceClassificator, ExpertEducationRecord, ExpertExperienceRecord, ExpertExperienceSegment, ExpertSearchRequest, ExpertSearchRequestExpertApplication, Notification, ProfileType, User, UserAvatar, UserReview, UserReviewType




class ExperienceClassificatorSerializer(ModelSerializer):
    class Meta:
        model = ExperienceClassificator
        fields = [
            "id",
            "name",
            "type",
            "order_number",
        ]
    

class ExperienceClassificatorChildrenSerializer(ExperienceClassificatorSerializer):
    children = SerializerMethodField()

    def get_children(self, instance):
        return ExperienceClassificatorSerializer(instance=instance.children, many=True).data 
    class Meta(ExperienceClassificatorSerializer.Meta):
        fields = ExperienceClassificatorSerializer.Meta.fields + [
            "children"
        ]

class EducationLevelSerializer(ModelSerializer):
    class Meta:
        model = EducationLevel
        fields = [
            "id",
            "name",
            "order_number",
        ]

class EducationDegreeSerializer(ModelSerializer):
    class Meta:
        model = EducationDegree
        fields = [
            "id",
            "name",
            "order_number",
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
    industry = ExperienceClassificatorSerializer()
    subindustry = ExperienceClassificatorSerializer()
    function = ExperienceClassificatorSerializer()
    subfunction = ExperienceClassificatorSerializer()

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

class UserAvatarSerializer(ModelSerializer):
    image = SerializerMethodField()
    image_small = SerializerMethodField()

    def get_image(self, instance):
        if not instance.image:
            return None
        
        return urljoin(settings.CDN_URL, instance.image.url)

    def get_image_small(self, instance):
        if not instance.image_small:
            return None
        
        return urljoin(settings.CDN_URL, instance.image_small.url)


    class Meta:
        model = UserAvatar
        fields = [
            "image",
            "image_small",
            "id"
        ]

class OwnProfileSerializer(ModelSerializer):
    avatar = UserAvatarSerializer()

    class Meta:
        model = User
        fields = [
            "first_name",
            "last_name",
            "phone_number",
            "email",
            "avatar",
        ]

class ProfileSerializer(ModelSerializer):
    avatar = UserAvatarSerializer()
    current_user_paid_for_view = SerializerMethodField()

    def __init__(self, instance=None, current_user: User = None, **kwargs):
        self.current_user: User | None = current_user
        super().__init__(instance=instance, **kwargs)

    def get_current_user_paid_for_view(self, instance):
        return instance.paid_users_for_view.filter(id=self.current_user.id).exists() if self.current_user else False
        

    class Meta:
        model = User
        fields = [
            "id",
            "first_name",
            "last_name",
            "phone_number",
            "email",
            "avatar",
            "current_user_paid_for_view"
        ]


class OwnExpertProfileSerializer(OwnProfileSerializer):
    education = ExpertEducationRecordSerializer(many=True, read_only=True, source="education_records")
    experience = ExperienceSerializer(many=True, read_only=True, source="experience_records")
    rating = SerializerMethodField()

    def get_rating(self, instance):
        return instance.get_rating(UserReviewType.EXPERT)

    class Meta(OwnProfileSerializer.Meta):
        fields = OwnProfileSerializer.Meta.fields + ["education", "experience", "rating"]

class OwnCompanyProfileSerializer(OwnProfileSerializer):
    rating = SerializerMethodField()

    def get_rating(self, instance):
        return instance.get_rating(UserReviewType.CLIENT)
        
    class Meta(OwnProfileSerializer.Meta):
        fields = OwnProfileSerializer.Meta.fields + ["company_name", "company_description", "company_inn", "company_website", "is_company_info_verification_requested", "is_company_info_verified", "rating"]


class OwnPersonProfileSerializer(OwnProfileSerializer):
    rating = SerializerMethodField()

    def get_rating(self, instance):
        return instance.get_rating(UserReviewType.CLIENT)

    class Meta(OwnProfileSerializer.Meta):
        fields = OwnProfileSerializer.Meta.fields + ["person_website", "person_activity_description", "rating"]

class PersonProfileSerializer(ProfileSerializer):
    rating = SerializerMethodField()

    def get_rating(self, instance):
        return instance.get_rating(UserReviewType.CLIENT)
    
    class Meta(ProfileSerializer.Meta):
        fields = ProfileSerializer().Meta.fields + ["person_website", "person_activity_description", "rating"]

    

class CompanyProfileSerializer(ProfileSerializer):
    rating = SerializerMethodField()

    def get_rating(self, instance):
        return instance.get_rating(UserReviewType.CLIENT)
    
    class Meta(ProfileSerializer.Meta):
        fields = ProfileSerializer.Meta.fields + ["company_name", "company_description", "company_inn", "company_website", "is_company_info_verification_requested", "is_company_info_verified", "rating"]

class ExpertProfileSerializer(ProfileSerializer):
    education = ExpertEducationRecordSerializer(many=True, read_only=True, source="education_records")
    experience = ExperienceSerializer(many=True, read_only=True, source="experience_records")
    rating = SerializerMethodField()

    def get_rating(self, instance):
        return instance.get_rating(UserReviewType.EXPERT)

    class Meta(ProfileSerializer.Meta):
        fields = ProfileSerializer.Meta.fields + ["education", "experience", "rating"]

class ExpertSearchSerializer(Serializer):
    _classificators = ExperienceClassificator.objects.all()

    experience = IntegerField(required=False)
    industry = PrimaryKeyRelatedField(required=False, queryset=_classificators)
    subindustry = PrimaryKeyRelatedField(required=False, queryset=_classificators)
    function = PrimaryKeyRelatedField(required=False, queryset=_classificators)
    subfunction = PrimaryKeyRelatedField(required=False, queryset=_classificators)
    prompt = CharField(max_length=200, required=False)

    class Meta:
        fields = [
            "experience",
            "industry",
            "subindustry",
            "function",
            "subfunction",
            "prompt"
        ]

class FoundExpertSerializer(ModelSerializer):
    avatar = UserAvatarSerializer()
    relevant_experience = SerializerMethodField()
    total_experience = SerializerMethodField()
    rating = SerializerMethodField()
    chat_id = IntegerField()

    def get_relevant_experience(self, instance: User):
        return round(instance.relevant_experience.days / 365.25, 1) if instance.relevant_experience else 0 

    def get_total_experience(self, instance: User):
        return round(instance.total_experience.days / 365.25, 1) if instance.total_experience else 0 
    
    def get_rating(self, instance: User):
        return instance.get_rating(UserReviewType.EXPERT)
    
    class Meta:
        model = User
        fields = [
            "id",
            "first_name",
            "last_name",
            "avatar",
            "rating",
            "relevant_experience",
            "total_experience",
            "chat_id"
        ]


class CompanyProfileGeneralInfoSerializer(ModelSerializer):
    type = CharField(source="main_profile_type")
    avatar = UserAvatarSerializer()

    class Meta:
        model = User
        fields = [
            "id",
            "type",
            "company_name", 
            "company_description",
            "company_website",
            "avatar",
        ]

class PersonProfileGeneralInfoSerializer(ModelSerializer):
    type = CharField(source="main_profile_type")
    avatar = UserAvatarSerializer()
    class Meta:
        model = User
        fields = [
            "id",
            "type",
            "first_name",
            "last_name",
            "avatar",
        ]

class ExpertSearchRequestApplicantSerializer(ModelSerializer):
    id = IntegerField(source="expert.id")
    avatar = UserAvatarSerializer(source="expert.avatar")

    class Meta:
        model = ExpertSearchRequestExpertApplication
        fields = [
            "id",
            "avatar"
        ]

class OwnExpertSearchRequestApplicantSerializer(ExpertSearchRequestApplicantSerializer):
    first_name = CharField(source="expert.first_name")
    last_name = CharField(source="expert.last_name")
    total_experience = FloatField(source="expert.experience")
    relevant_experience = SerializerMethodField()
    chat_id = SerializerMethodField()
    application_id = IntegerField(source="pk")

    def get_relevant_experience(self, instance):
        relevant_segments_conditions = Q()
        if industry := instance.request.industry:
            relevant_segments_conditions.add(Q(industry=industry), Q.AND)
        if subindustry := instance.request.subindustry:
            relevant_segments_conditions.add(Q(subindustry=subindustry), Q.AND)
        if function := instance.request.function:
            relevant_segments_conditions.add(Q(function=function), Q.AND)
        if subfunction := instance.request.subfunction:
            relevant_segments_conditions.add(Q(function=subfunction), Q.AND)

        segments = instance.expert.experience_segments.filter(relevant_segments_conditions)
        total = segments.aggregate(total=Sum("duration"))["total"]
        return round(total.days / 365.25, 3) if total else 0 

    def get_chat_id(self, instance: User) -> int | None:
        chat = instance.request.creator.chats.filter().filter(participants=instance.expert, search_request=instance.request, is_closed=False).first()
        
        if chat:
            return chat.id
        
        return None

    class Meta(ExpertSearchRequestApplicantSerializer.Meta):
        fields = ExpertSearchRequestApplicantSerializer.Meta.fields + [
            "first_name",
            "last_name",
            "total_experience",
            "relevant_experience",
            "chat_id",
            "application_id",
        ]


class ExpertSearchRequestSerializer(ModelSerializer):
    industry = ExperienceClassificatorSerializer()
    subindustry = ExperienceClassificatorSerializer()
    function = ExperienceClassificatorSerializer()
    subfunction = ExperienceClassificatorSerializer()
    creator = SerializerMethodField()
    applicants = SerializerMethodField()
    applicants_count = SerializerMethodField()
    is_application_sent = SerializerMethodField()
    creator_rating = SerializerMethodField()


    def __init__(self, instance=None, current_user: User = None, **kwargs):
        self.current_user: User | None = current_user
        super().__init__(instance=instance, **kwargs)

    def get_applicants_count(self, instance):
        return instance.applications.all().count()

    def get_applicants(self, instance):
        return ExpertSearchRequestApplicantSerializer(instance=instance.applications.all(), many=True).data
    
    def get_is_application_sent(self, instance):
        if not self.current_user or self.current_user.is_anonymous:
            return False

        return instance.applications.filter(expert=self.current_user).exists()
    
    def get_creator_rating(self, instance):
        return instance.creator.get_rating(UserReviewType.CLIENT)

    def get_creator(self, instance):
        if instance.creator.main_profile_type == ProfileType.COMPANY:
            return CompanyProfileGeneralInfoSerializer(instance=instance.creator).data
        else:
            return PersonProfileGeneralInfoSerializer(instance=instance.creator).data

    class Meta:
        model = ExpertSearchRequest
        fields = [
            "id",
            "creator",
            "applicants",
            "applicants_count",
            "name",
            "description",
            "datetime_created",
            "industry",
            "subindustry",
            "function",
            "subfunction",
            "type",
            "is_application_sent",
            "creator_rating",
            "is_active",
        ]


class OwnExpertSearchRequestSerializer(ExpertSearchRequestSerializer):
        
    def get_applicants(self, instance):
        return OwnExpertSearchRequestApplicantSerializer(instance=instance.applications.all(), many=True).data

class CreatedExpertSearchRequestSerializer(OwnExpertSearchRequestSerializer):
    class Meta(ExpertSearchRequestSerializer.Meta):
        fields = ExpertSearchRequestSerializer.Meta.fields + [
            "datetime_expire"
        ]


class ExpertSearchRequestViewSerializer(Serializer):
    _classificators = ExperienceClassificator.objects.all()

    page = IntegerField(required=False)
    industry = PrimaryKeyRelatedField(required=False, queryset=_classificators)
    subindustry = PrimaryKeyRelatedField(required=False, queryset=_classificators)
    function = PrimaryKeyRelatedField(required=False, queryset=_classificators)
    subfunction = PrimaryKeyRelatedField(required=False, queryset=_classificators)
    prompt = CharField(max_length=200, required=False)


class GetExpertRequestsApplicationsSerializer(ModelSerializer):
    request = ExpertSearchRequestSerializer()

    class Meta:
        model = ExpertSearchRequestExpertApplication
        fields = [
            "request",
            "datetime_created"
        ]


class UserReviewSerializer(ModelSerializer):
    name = SerializerMethodField()

    def get_name(self, instance):
        return "anonymous #TODO" #TODO
    
    class Meta:
        model = UserReview
        fields = [
            "id",
            "datetime_created",
            "rating",
            "text",
            "type",
            "name",
        ]

class NotificationSerializer(ModelSerializer):

    class Meta:
        model = Notification
        fields = [
            "id",
            "datetime_created",
            "text",
            "header",
            "url",
            "is_read",
            "other_data"
        ]