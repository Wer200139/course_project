import re
from django.core.exceptions import ValidationError
from django.utils.translation import gettext as _

class NumberValidator(object):
    def validate(self, password, user=None):
        if not re.findall('\d', password):
            raise ValidationError(
                _("Пароль должен содержать как минимум одну цифру"),
                code='password_no_number',
            )

    def get_help_text(self):
        return _(
            "Пароль должен содержать как минимум одну цифру"
        )


class UppercaseValidator(object):
    def validate(self, password, user=None):
        if not re.findall('[A-Z]', password):
            raise ValidationError(
                _("Пароль должен содержать как минимум одну заглавную букву"),
                code='password_no_upper',
            )

    def get_help_text(self):
        return _(
            "Пароль должен содержать как минимум одну заглавную букву"
        )


class LowercaseValidator(object):
    def validate(self, password, user=None):
        if not re.findall('[a-z]', password):
            raise ValidationError(
                _("Пароль должен содержать как минимум одну букву в нижнем регистре"),
                code='password_no_lower',
            )

    def get_help_text(self):
        return _(
            "Пароль должен содержать как минимум одну букву в нижнем регистре"
        )
