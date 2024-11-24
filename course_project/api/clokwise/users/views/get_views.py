from datetime import datetime, timedelta
from django.http import Http404

from rest_framework import status
from rest_framework.views import APIView
from rest_framework.generics import ListAPIView, RetrieveAPIView
from rest_framework.response import Response
from rest_framework.permissions import AllowAny, IsAuthenticated
from django.contrib.postgres.search import SearchVector, SearchQuery, SearchRank
from django.utils.translation import gettext_lazy as _
from django.db.models import (
    Q,
    Subquery, 
    OuterRef,
    ExpressionWrapper,
    F,
    DurationField,
    Sum,
)
from chats.models import Chat

from users.serializers.get_serializers import ExperienceClassificatorChildrenSerializer, NotificationSerializer, UserReviewSerializer
from users.models import (
    EducationDegree, 
    EducationLevel, 
    ExperienceClassificator, 
    ExperienceClassificatorType, 
    ExpertExperienceRecord,
    ExpertExperienceSegment,
    ExpertSearchRequest,
    ExpertSearchRequestExpertApplication,
    ExpertSearchRequestType, 
    ProfileType, 
    User, 
    UserAvatar,
    UserReview,
    UserReviewType
)

from users.serializers.get_serializers import (
    CompanyProfileSerializer,
    CreatedExpertSearchRequestSerializer, 
    EducationDegreeSerializer,
    EducationLevelSerializer, 
    ExperienceClassificatorSerializer,
    ExpertSearchRequestSerializer,
    ExpertSearchRequestViewSerializer, 
    ExpertSearchSerializer,
    FoundExpertSerializer,
    GetExpertRequestsApplicationsSerializer, 
    OwnCompanyProfileSerializer, 
    OwnExpertProfileSerializer,
    OwnExpertSearchRequestSerializer, 
    OwnPersonProfileSerializer, 
    PersonProfileSerializer, 
    UserAvatarSerializer,
    ExpertProfileSerializer,
)
from users.views.mixins import PostPaginatorMixin
from users.views.paginators import ExpertRequestsPagination, UserReviewsPagination


class GetAvailableExperienceIndustriesView(ListAPIView):
    permission_classes = [AllowAny]
    serializer_class = ExperienceClassificatorSerializer
    model = ExperienceClassificator
    
    def get_queryset(self):
        queryset = self.model.objects.order_by("order_number")
        children_needed = self.request.query_params.get('with_children')
        if children_needed:
            queryset = queryset.prefetch_related("children")
            self.serializer_class = ExperienceClassificatorChildrenSerializer
        return queryset.filter(type=ExperienceClassificatorType.INDUSTRY)
    

class GetAvailableExperienceChildrenClassificatorsView(ListAPIView):
    permission_classes = [AllowAny]
    serializer_class = ExperienceClassificatorSerializer
    model = ExperienceClassificator

    def get_queryset(self):
        children_needed = self.request.query_params.get('with_children')
        queryset = self.model.objects.order_by("order_number")
        if children_needed:
            queryset = queryset.prefetch_related("children")
            self.serializer_class = ExperienceClassificatorChildrenSerializer
        return queryset.filter(parent=self.kwargs["parent_id"])

class GetAvailableExperienceFunctions(ListAPIView):
    permission_classes = [AllowAny]
    serializer_class = ExperienceClassificatorChildrenSerializer
    model = ExperienceClassificator

    def get_queryset(self):
        queryset = self.model.objects.order_by("order_number").prefetch_related("children")
        parent = self.model.objects.filter(pk=self.kwargs["parent_id"]).first()
        if not parent:
            raise Http404
        
        if not parent.type in [ExperienceClassificatorType.INDUSTRY, ExperienceClassificatorType.SUBINDUSTRY]:
            return Response(status=status.HTTP_400_BAD_REQUEST)

        conditions = Q(type=ExperienceClassificatorType.FUNCTION)
        
        if parent.type == ExperienceClassificatorType.INDUSTRY:
            conditions.add(Q(parent__parent=parent), Q.AND)
        else:
            conditions.add(Q(parent=parent), Q.AND)

        return queryset.filter(conditions)


class GetAvailableEducationLevelsView(ListAPIView):
    permission_classes = [IsAuthenticated]
    serializer_class = EducationLevelSerializer
    model = EducationLevel

    def get_queryset(self):
        return self.model.objects.order_by("order_number").all()
    
class GetAvailableEducationDegreesView(ListAPIView):
    permission_classes = [IsAuthenticated]
    serializer_class = EducationDegreeSerializer
    model = EducationDegree

    def get_queryset(self):
        return self.model.objects.order_by("order_number").all()
    
class GetOwnExpertProfile(RetrieveAPIView):
    permission_classes = [IsAuthenticated]
    serializer_class = OwnExpertProfileSerializer
    
    def get_object(self):
        return self.request.user
    
class GetExpertProfile(APIView):
    permission_classes = [AllowAny]

    def get(self, request, user_id: int):
        if user := User.objects.filter(pk=user_id).first():
            serializer = ExpertProfileSerializer(instance=user, current_user=request.user)
            return Response(serializer.data, status=status.HTTP_200_OK)
        else:
            raise Http404


class GetOwnCompanyProfileView(RetrieveAPIView):
    permission_classes = [IsAuthenticated]
    serializer_class = OwnCompanyProfileSerializer
    
    def get_object(self):
        return self.request.user
    
class GetOwnPersonProfileView(RetrieveAPIView):
    permission_classes = [IsAuthenticated]
    serializer_class = OwnPersonProfileSerializer
    
    def get_object(self):
        return self.request.user
    
class GetAvatarsVariantsView(ListAPIView):
    permission_classes = [IsAuthenticated]
    serializer_class = UserAvatarSerializer
    model = UserAvatar

    def get_queryset(self):
        return self.model.objects.filter(is_preset=True)
    
class GetOwnClientMainProfileView(APIView):
    permission_classes = [IsAuthenticated]
    def get(self, request):
        if user := User.objects.filter(id=request.user.id).first():
            main_profile_type = user.main_profile_type
            match main_profile_type:
                case ProfileType.COMPANY:
                    result = OwnCompanyProfileSerializer(instance=user)
                case ProfileType.PERSON:
                    result = OwnPersonProfileSerializer(instance=user)
            data = result.data
            data["profile_type"] = main_profile_type
            return Response(data, status=status.HTTP_200_OK)
        else:
            raise Http404

class GetClientMainProfileView(APIView):
    permission_classes = [IsAuthenticated]
    def get(self, request, user_id: int):
        if user := User.objects.filter(id=user_id).first():
            main_profile_type = user.main_profile_type
            match main_profile_type:
                case ProfileType.COMPANY:
                    result = CompanyProfileSerializer(instance=user, current_user=request.user)
                case ProfileType.PERSON:
                    result = PersonProfileSerializer(instance=user, current_user=request.user)
            data = result.data
            data["profile_type"] = main_profile_type
            return Response(data, status=status.HTTP_200_OK)
        else:
            raise Http404
        

class ExpertSearchView(APIView):
    permission_classes = [AllowAny]
    def post(self, request):
        serializer = ExpertSearchSerializer(data=request.data)
        if not serializer.is_valid():
            return Response(status=status.HTTP_400_BAD_REQUEST)

        data = serializer.validated_data
        relevant_segments_conditions = Q()
        if industry_id := data.get("industry"):
            relevant_segments_conditions.add(Q(industry=industry_id), Q.AND)
        if subindustry_id := data.get("subindustry"):
            relevant_segments_conditions.add(Q(subindustry=subindustry_id), Q.AND)
        if function_id := data.get("function"):
            relevant_segments_conditions.add(Q(function=function_id), Q.AND)
        if subfunction_id := data.get("subfunction"):
            relevant_segments_conditions.add(Q(subfunction=subfunction_id), Q.AND)
            
        if not relevant_segments_conditions.children:
            return Response(status=status.HTTP_400_BAD_REQUEST)
        
        segments = ExpertExperienceSegment.objects.select_related(
            "experience_record", "experience_record__user"
        ).annotate(
            duration = ExpressionWrapper(F("date_end") - F("date_start"), output_field=DurationField())
        )

        relevant_segments = segments.filter(
            relevant_segments_conditions
        )

        relevant_experience = relevant_segments.values(
            "experience_record__user"
        ).order_by(
            "experience_record__user"
        ).annotate(
            relevant_experience=Sum("duration")
        )

        total_experience = segments.values(
            "experience_record__user"
        ).order_by(
            "experience_record__user"
        ).annotate(
            total_experience=Sum("duration")
        )


        experts_conditions = Q(pk__in=relevant_segments.values("experience_record__user"))

        experts = User.objects.filter(
            experts_conditions
        ).annotate(
            relevant_experience=Subquery(
                relevant_experience.filter(
                    experience_record__user=OuterRef("pk")
                ).values(
                    "relevant_experience"
                )
            ),
            total_experience=Subquery(
                total_experience.filter(
                    experience_record__user=OuterRef("pk")
                ).values(
                    "total_experience"
                )
            ),
            chat_id=Subquery(
                Chat.objects.filter(
                    search_request__isnull=True,
                    expert=OuterRef("pk"),
                    initiator__id__in=[OuterRef("pk"), request.user.id],
                    is_closed=False
                ).values("id")[:1]
            )
        )

        if experience_years := data.get("experience"):
            experts = experts.filter(relevant_experience__gte=timedelta(days=experience_years * 365))



        if prompt := data.get("prompt"):
            vector = SearchVector(
                "company_name",
                "experience_records__segments__description",
                "experience_records__segments__industry__name",
                "experience_records__segments__subindustry__name",
                "experience_records__segments__function__name",
                "experience_records__segments__subfunction__name",
            )
            query = SearchQuery(prompt)
            experts = experts.annotate(
                search=vector, rank=SearchRank(vector, query)
            ).filter(
                search=query
            ).order_by("id", "-rank", "-relevant_experience").distinct("id")
        else:
            experts = experts.order_by("-relevant_experience")

        
        

        json = FoundExpertSerializer(instance=experts, many=True).data
        return Response(data=json, status=status.HTTP_200_OK)
    

class ExpertRequestsSearchView(APIView, PostPaginatorMixin):
    permission_classes = [IsAuthenticated]
    serializer_class = ExpertSearchRequestSerializer
    pagination_class = ExpertRequestsPagination
    queryset = ExpertSearchRequest.objects.filter(type=ExpertSearchRequestType.PUBLIC, is_active=True)

    def post(self, request):
        request_serializer = ExpertSearchRequestViewSerializer(data=request.data)
        if not request_serializer.is_valid():
            return Response(request_serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        
        data = request_serializer.validated_data
        conditions = Q(is_active=True)
        conditions.add(~Q(creator=request.user), Q.AND)
        if industry := data.get("industry"):
            conditions.add(Q(industry=industry), Q.AND)
        if subindustry := data.get("subindustry"):
            conditions.add(Q(subindustry=subindustry), Q.AND)
        if function := data.get("function"):
            conditions.add(Q(function=function), Q.AND)
        if subfunction := data.get("subfunction"):
            conditions.add(Q(subfunction=subfunction), Q.AND)
        if prompt := data.get("prompt"):
            vector = SearchVector(
                "industry__name",
                "subindustry__name",
                "function__name",
                "subfunction__name",
                "name",
                "description",
            )
            query = SearchQuery(prompt)
            self.queryset = self.queryset.annotate(
                search=vector, rank=SearchRank(vector, query)
            )
            conditions.add(Q(search=query), Q.AND)

        queryset = self.queryset.filter(conditions).order_by('-datetime_created')
        page = self.paginate_queryset(queryset)
        if page is not None:
            serializer = self.serializer_class(page, many=True, current_user=request.user)
            return self.get_paginated_response(serializer.data)

        serializer = self.serializer_class(queryset, many=True, current_user=request.user)
        return Response(serializer.data)
    

class GetCreatedExpertSearchRequestsView(APIView):

    permission_classes = [IsAuthenticated]
    serializer_class = CreatedExpertSearchRequestSerializer

    def get(self, request):
        created_expert_requests = ExpertSearchRequest.objects.filter(creator=request.user, is_active=True).order_by("-datetime_created")
        if search_request_type := self.request.query_params.get('type'):
            if search_request_type in ExpertSearchRequestType.values:
                created_expert_requests = created_expert_requests.filter(type=search_request_type)
        
        serializer = self.serializer_class(created_expert_requests, many=True)
        return Response(serializer.data)


class GetExpertRequestsApplicationsView(APIView):
    permission_classes = [IsAuthenticated]
    serializer_class = GetExpertRequestsApplicationsSerializer

    def get(self, request):
        applications = ExpertSearchRequestExpertApplication.objects.filter(expert=request.user, request__is_active=True).order_by("-datetime_created")
        serializer = GetExpertRequestsApplicationsSerializer(applications, many=True)
        return Response(serializer.data)
    
class GetExpertSearchRequestView(APIView):
    permission_classes = [IsAuthenticated]
    serializer_class = ExpertSearchRequestSerializer

    def get(self, request, pk: int):
        search_request = ExpertSearchRequest.objects.filter(pk=pk).first()
        if not search_request:
            return Response(status=status.HTTP_404_NOT_FOUND)

        serializer = self.serializer_class(search_request, current_user=request.user)
        return Response(serializer.data)
    

class GetOwnExpertSearchRequestView(APIView):
    permission_classes = [IsAuthenticated]
    serializer_class = OwnExpertSearchRequestSerializer

    def get(self, request, pk: int):
        search_request = ExpertSearchRequest.objects.filter(creator=request.user, pk=pk).first()
        if not search_request:
            return Response(status=status.HTTP_404_NOT_FOUND)

        serializer = self.serializer_class(search_request, current_user=request.user)
        return Response(serializer.data)

class GetUserReviewsView(APIView, PostPaginatorMixin):
    permission_classes = [IsAuthenticated]
    serializer_class = UserReviewSerializer
    pagination_class = UserReviewsPagination


    def get(self, request, user_id: int, review_type: str | None = None):
        if not (user := User.objects.filter(id=user_id).first()):
            return Http404

        queryset = UserReview.objects.filter(user=user).order_by('-datetime_created')
        if review_type:
            review_type = review_type.upper()
            if not review_type in UserReviewType.values:
                return Response({"error": "Invalid type"}, status=status.HTTP_400_BAD_REQUEST)
            queryset = queryset.filter(type=review_type)
    
        page = self.paginate_queryset(queryset)
        if page is not None:
            serializer = self.serializer_class(page, many=True)
            return self.get_paginated_response(serializer.data)

        serializer = self.serializer_class(queryset, many=True)
        return Response(serializer.data)
    

class GetNotificationsView(APIView):
    permission_classes = [IsAuthenticated]
    serializer_class = NotificationSerializer

    def get(self, request):
        queryset = request.user.received_notifications.order_by("-datetime_created")
        return Response(self.serializer_class(queryset, many=True).data)
