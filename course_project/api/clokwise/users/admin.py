from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.utils.translation import gettext as _
from django.forms import ModelForm

from users.models import ConfirmationCode, EducationDegree, EducationLevel, ExperienceClassificator, ExperienceClassificatorType, ExpertEducationRecord, ExpertExperienceRecord, ExpertExperienceSegment, ExpertSearchRequest, Notification, User, UserAvatar, UserReview

# Register your models here.
@admin.register(User)
class CustomUserAdmin(UserAdmin):
    list_display = [
        "id",
        "email",
        "first_name",
        "last_name",
    ]


    ordering = ["email"]
    add_fieldsets = (
        (None, 
            {'fields': 
                ('email', 
                'first_name', 
                'last_name',  
                'phone_number', 
                'date_registered', 
                'is_verified_email',
                'is_legal_entity',
                'is_active',
                'avatar',
                'company_name',
                'company_inn',
                'company_website',
                'company_description',
                'person_website',
                'person_activity_description',
                "is_company_info_verified",
                "is_company_info_verification_requested",
                "is_staff",
                )
            }
        ),
    )
    fieldsets = add_fieldsets


admin.site.register(UserAvatar)
admin.site.register(ConfirmationCode)
admin.site.register(EducationLevel)
admin.site.register(EducationDegree)
admin.site.register(ExpertEducationRecord)
admin.site.register(ExpertExperienceRecord)
admin.site.register(ExpertExperienceSegment)
admin.site.register(ExpertSearchRequest)
admin.site.register(Notification)
admin.site.register(UserReview)

class ExperienceClassificatorForm(ModelForm):
    def __init__(self, *args, **kwargs):
        super(ExperienceClassificatorForm, self).__init__(*args, **kwargs)

        industries = []
        subindustries = []
        functions = []
        subfunctions = []
        for classificator in ExperienceClassificator.objects.all():
            record = (classificator.id, classificator.name)
            match classificator.type:
                case ExperienceClassificatorType.INDUSTRY:
                    industries.append(record)
                case ExperienceClassificatorType.SUBINDUSTRY:
                    subindustries.append(record)
                case ExperienceClassificatorType.FUNCTION:
                    functions.append(record)
                case ExperienceClassificatorType.SUBFUNCTION:
                    subfunctions.append(record)

        self.fields['parent'].choices = [
            ["", '---------'],
            [_("Отрасли"), industries],
            [_("Подотрасли"), subindustries],
            [_("Функции"), functions],
            [_("Подфункции"), subfunctions],
        ]


@admin.register(ExperienceClassificator)
class ExperienceClassificatorAdmin(admin.ModelAdmin):
    list_display = [
        "id",
        "name",
        "type",
        "parent",
    ]
    form = ExperienceClassificatorForm
