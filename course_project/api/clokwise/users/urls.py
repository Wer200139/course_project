from django.urls import path

from users.views.auth_views import (
    BindEmailConfirmAPIView, 
    IsAuthorizedView,
    LoginView,
    RequestPasswordResetTokenAPIView,
    ResendConfirmationEmailAPIView,
    ResetPasswordAPIView,
    SignUpView,
    TokenRefreshAPIView
)

from users.views.get_views import (
    ExpertRequestsSearchView,
    ExpertSearchView,
    GetAvailableEducationDegreesView,
    GetAvailableEducationLevelsView,
    GetAvailableExperienceChildrenClassificatorsView,
    GetAvailableExperienceIndustriesView,
    GetAvailableExperienceFunctions,
    GetAvatarsVariantsView,
    GetClientMainProfileView,
    GetCreatedExpertSearchRequestsView,
    GetExpertProfile,
    GetExpertRequestsApplicationsView,
    GetExpertSearchRequestView,
    GetNotificationsView,
    GetOwnClientMainProfileView,
    GetOwnCompanyProfileView,
    GetOwnExpertProfile,
    GetOwnExpertSearchRequestView,
    GetOwnPersonProfileView,
    GetUserReviewsView,
)

from users.views.views import (
    ChangePasswordView,
    CreateExpertSearchRequestView, 
    CreateGeneralRequestView, 
    ExpertSearchRequestExpertApplyView,
    InviteExpertToRequestView, 
    RequestCompanyInformationVerificationView, 
    SetUserAvatarView,
    TestPayForBoostResponseView,
    UpdateCompanyInformationView, 
    UpdateEducationView, 
    UpdateExpertExperienceView, 
    UpdatePersonActivityInformationView,
    UpdateProfileView, 
    RequestProfileEditConfirmationCodeView,
    TestPayForProfileViewView,
    TestProlongSubscriptionView
)

from fcm_django.api.rest_framework import FCMDeviceAuthorizedViewSet

urlpatterns = [
    path("login/", LoginView.as_view()),
    path("sign-up/", SignUpView.as_view()),
    path("token/refresh/", TokenRefreshAPIView.as_view()),
    path("is-authorized/", IsAuthorizedView.as_view()),
    path("confirm-email/", BindEmailConfirmAPIView.as_view()),
    path("resend-confirmation-email/", ResendConfirmationEmailAPIView.as_view()),
    path("request-password-reset/", RequestPasswordResetTokenAPIView.as_view()),
    path("reset-password/", ResetPasswordAPIView.as_view()),
    #Experience
    path("profile/experience/update/", UpdateExpertExperienceView.as_view()),
    path("experience/get-available-industries/", GetAvailableExperienceIndustriesView.as_view()),
    path("experience/get-children-classificators/<int:parent_id>/", GetAvailableExperienceChildrenClassificatorsView.as_view()),
    path("experience/get-available-functions/<int:parent_id>/", GetAvailableExperienceFunctions.as_view()),
    #Education
    path("profile/education/get-available-levels/", GetAvailableEducationLevelsView.as_view()),
    path("profile/education/get-available-degrees/", GetAvailableEducationDegreesView.as_view()),
    path("profile/education/update/", UpdateEducationView.as_view()),
    #Profile
    path("profile/update/", UpdateProfileView.as_view()),
    path("profile/set-avatar/", SetUserAvatarView.as_view()),
    path("profile/update-password/", ChangePasswordView.as_view()),
    path("profile/client/get-main-profile/<int:user_id>/", GetClientMainProfileView.as_view()),
    path("profile/client/get-main-profile/", GetOwnClientMainProfileView.as_view()),
    path("profile/get-avatars-variants/", GetAvatarsVariantsView.as_view()),
    path("profile/request-edit-confirmation-code/", RequestProfileEditConfirmationCodeView.as_view()),
    #Person profile
    path("profile/person/update-activity/", UpdatePersonActivityInformationView.as_view()),
    path("profile/person/get/", GetOwnPersonProfileView.as_view()),
    #Company profile
    path("profile/company/update-info/", UpdateCompanyInformationView.as_view()),
    path("profile/company/get/", GetOwnCompanyProfileView.as_view()),
    path("profile/company/request-verification/", RequestCompanyInformationVerificationView.as_view()),
    #Expert profile
    path("profile/expert/get/", GetOwnExpertProfile.as_view()),
    path("profile/expert/get/<int:user_id>/", GetExpertProfile.as_view()),
    #Expert search
    path("expert/search/", ExpertSearchView.as_view()),
    
    #Employer requests
    path("company/create-general-request/", CreateGeneralRequestView.as_view()), #TODO remove
    path("company/create-expert-search-request/", CreateExpertSearchRequestView.as_view()),
    path("expert/search-requests/", ExpertRequestsSearchView.as_view()),
    path("expert/send-request-application/", ExpertSearchRequestExpertApplyView.as_view()),
    path("expert/get-applications/", GetExpertRequestsApplicationsView.as_view()),
    path("expert/get-search-request/<int:pk>/", GetExpertSearchRequestView.as_view()),
    path("company/get-search-request/<int:pk>/", GetOwnExpertSearchRequestView.as_view()),
    path("company/get-created-requests/", GetCreatedExpertSearchRequestsView.as_view()),
    path("company/invite-expert/", InviteExpertToRequestView.as_view()),
    #FCM
    path('notifications/pn/create-device/', FCMDeviceAuthorizedViewSet.as_view({'post': 'create'}), name='create_fcm_device'),
    path("profile/get-reviews/<int:user_id>/", GetUserReviewsView.as_view()),
    path("profile/get-reviews/<int:user_id>/<str:review_type>/", GetUserReviewsView.as_view()),
    
    #Notifications
    path("notifications/get/", GetNotificationsView.as_view()),
    path("test/prolong-subscription/", TestProlongSubscriptionView.as_view()),
    path("test/pay-for-profile-view/<int:user_id>/", TestPayForProfileViewView.as_view()),
    path("test/pay-for-boost-response/<int:chat_id>/", TestPayForBoostResponseView.as_view()),
]   
