import 'package:clock/clock.dart';
import 'package:clokwise/packages/core/forms/custom_validation_message.dart';
import 'package:clokwise/packages/core/forms/date_input_mode.dart';
import 'package:reactive_forms/reactive_forms.dart';
// todo: https://github.com/joanpablo/reactive_forms/pull/290
// как определить дефолтные сообщения в MaterialApp
abstract class CustomValidators {
/*
  static final ValidatorFunction requiredPatronymic =
      required(validationMessage: CustomValidationMessages.requiredPatronymic);
*/

  static final ValidatorFunction onlyLetters = Validators.pattern(
    r'^[А-Яа-я-ёЁ A-Za-z]+$',
    validationMessage: CustomValidationMessages.letters,
  ).call;

  static final ValidatorFunction onlyNumbers = Validators.pattern(
    r'^\d+$',
    validationMessage: CustomValidationMessages.number,
  ).call;

  static final ValidatorFunction emailValidator = Validators.pattern(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    validationMessage: CustomValidationMessages.invalidMail,
  ).call;

  static final ValidatorFunction cyrillic = Validators.pattern(
    r'^[А-Яа-я-ёЁ ]+$',
    validationMessage: CustomValidationMessages.cyrillic,
  ).call;

  static final ValidatorFunction englishLogin = Validators.pattern(
    r'^[A-Za-z\d]+$',
    validationMessage: CustomValidationMessages.english,
  ).call;

  static ValidatorFunction required({
    String? validationMessage
  }) {
    validationMessage = CustomValidationMessages.required;
    return (control) {
      return Validators.required(control) == null
          ? null
          : <String, dynamic>{validationMessage!: true};
    };
  }

  static ValidatorFunction passwordValidator({
    String? validationMessage
  }) {
    validationMessage = CustomValidationMessages.invalidPassword;
    return (control) {
      final password = control.value;
      if (password == null || password.isEmpty) {
        return <String, dynamic>{validationMessage!: true};
      }
      const pattern = r'^(?=.*[0-9])[a-zA-Z0-9]{6,}$';
      if (!RegExp(pattern).hasMatch(password)) {
        return <String, dynamic>{validationMessage!: true};
      }
      return null;
    };
  }

  static ValidatorFunction passwordNoMessageValidator({
    String? validationMessage
  }) {
    validationMessage = CustomValidationMessages.noMessage;
    return (control) {
      final password = control.value;
      if (password == null || password.isEmpty) {
        return <String, dynamic>{validationMessage!: false};
      }
      const pattern = r'^(?=.*[0-9])[a-zA-Z0-9]{6,}$';
      if (!RegExp(pattern).hasMatch(password)) {
        return <String, dynamic>{validationMessage!: false};
      }
      return null;
    };
  }

  static ValidatorFunction min<T>({
    required T min,
    String? validationMessage,
  }) {
    validationMessage = CustomValidationMessages.min;
    return (control) {
      return Validators.min(min)(control) == null
          ? null
          : <String, dynamic>{validationMessage!: true};
    };
  }

  static ValidatorFunction max<T>({
    required T max,
    String? validationMessage,
  }) {
    validationMessage = CustomValidationMessages.max;
    return (control) {
      return Validators.max(max)(control) == null
          ? null
          : <String, dynamic>{validationMessage!: true};
    };
  }

  static ValidatorFunction minLength({
    required int minLength,
    String? validationMessage,
  }) {
    validationMessage = CustomValidationMessages.minLength;

    return (control) {
      return Validators.minLength(minLength)(control) == null
          ? null
          : <String, dynamic>{validationMessage!: true};
    };
  }

  static ValidatorFunction maxLength({
    required int maxLength,
    String? validationMessage,
  }) {
    validationMessage = CustomValidationMessages.maxLength(maxLength);

    return (control) {
      return Validators.maxLength(maxLength)(control) == null
          ? null
          : <String, dynamic>{validationMessage!: true};
    };
  }

  static ValidatorFunction lengthRange({
    required int minLength,
    required int maxLength,
    String? validationMessage,
  }) {
    validationMessage ??= CustomValidationMessages.lengthRange(minLength, maxLength);

    return (control) {
      return Validators.maxLength(maxLength)(control) == null &&
              Validators.minLength(minLength)(control) == null
          ? null
          : <String, dynamic>{validationMessage!: true};
    };
  }

/*  static ValidatorFunction notBlockedEmailDomain() {
    return (control) {
      final RegExp blockedDomains = RegExp(r'@(outlook|hotmail|live)\.');
      final String? email = control.value;

      if (email != null && email.contains(blockedDomains)) {
        return {
          CustomValidationMessages.blockedEmailDomain: true,
        };
      }

      return null;
    };
  }*/

  static ValidatorFunction fullDate() {
    return (control) {
      if (control.value == null || (control.value as String).isEmpty) {
        return null;
      }

      final dateAsString = control.value as String;

      if (!_isDateHasCorrectFormat(
        date: dateAsString,
        inputMode: DateInputMode.fullDate,
      )) {
        return {
          CustomValidationMessages.date: true,
        };
      }

      if (dateAsString.length != DateInputMode.fullDate.mask.length) {
        return {
          CustomValidationMessages.date: true,
        };
      }

      final List<String> date = dateAsString.split('.');

      final day = int.parse(date[0]);
      final month = int.parse(date[1]);
      final year = int.parse(date[2]);

      if (_isErrorInFebruary(
        day: day,
        month: month,
        year: year,
      )) {
        return {
          CustomValidationMessages.date: true,
        };
      }

      final isCountOfDaysMoreThanMonthLimit = _isMonthLong(month: month) ? day > 31 : day > 30;

      final dayCondition = day <= 0 || isCountOfDaysMoreThanMonthLimit;

      if (dayCondition ||
          _isMonthOrYearNotValid(
            month: month,
            year: year,
          )) {
        return {
          CustomValidationMessages.date: true,
        };
      }
      return null;
    };
  }

  static ValidatorFunction monthYearDate() {
    return (control) {
      if (control.value == null || (control.value as String).isEmpty) {
        return null;
      }

      final dateAsString = control.value as String;

      if (!_isDateHasCorrectFormat(
        date: dateAsString,
        inputMode: DateInputMode.monthAndYear,
      )) {
        return {
          CustomValidationMessages.date: true,
        };
      }

      if (dateAsString.length != DateInputMode.monthAndYear.mask.length) {
        return {
          CustomValidationMessages.date: true,
        };
      }

      final List<String> date = dateAsString.split('.');

      final month = int.parse(date[0]);
      final year = int.parse(date[1]);

      if (_isMonthOrYearNotValid(
        month: month,
        year: year,
      )) {
        return {
          CustomValidationMessages.date: true,
        };
      }
      return null;
    };
  }

  static ValidatorFunction inputDateNotAfterCurrentDate() {
    return (control) {
      if (control.value == null) {
        return null;
      }

      final dateAsString = control.value as String;
      final List<String> date = dateAsString.split('.');

      if (dateAsString.length == DateInputMode.monthAndYear.mask.length) {
        final month = int.parse(date[0]);
        final year = int.parse(date[1]);

        if (_isInputMonthAndYearAfterCurrent(
          inputMonth: month,
          inputYear: year,
        )) {
          return {
            CustomValidationMessages.date: true,
          };
        }
      }

      if (dateAsString.length == DateInputMode.fullDate.mask.length) {
        if (_isInputFullDateAfterCurrentDate(inputDateAsString: date.reversed.join('-'))) {
          return {
            CustomValidationMessages.date: true,
          };
        }
      }
      return null;
    };
  }

  static final ValidatorFunction phoneNumber = Validators.pattern(
    r'\+?\d{1,4}?[-.\s]?\(?\d{1,3}?\)?[-.\s].\d{1,4}[-.\s].\d{1,4}[-.\s].\d{1,9}$',
    validationMessage: CustomValidationMessages.phoneNumber,
  ).call;

/*  static final ValidatorFunction site = Validators.pattern(
    r'(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)',
    validationMessage: CustomValidationMessages.site,
  );

  static ValidatorFunction number({
    String? validationMessage,
  }) {
      validationMessage = CustomValidationMessages.number;

    return (control) {
      return Validators.number(control) == null ? null : <String, dynamic>{validationMessage!: true};
    };
  }*/

  static bool _isDateHasCorrectFormat({

    required String date,
    required DateInputMode inputMode,
  }) {
    final pattern = switch (inputMode) {
      DateInputMode.fullDate => r'^\d\d\.\d\d\.\d\d\d\d$',
      DateInputMode.monthAndYear => r'^\d\d\.\d\d\d\d$',
    };

    return RegExp(pattern).hasMatch(date);
  }

  static bool _isMonthOrYearNotValid({
    required int month,
    required int year,
  }) {
    return month > 12 || month <= 0 || year < clock.now().year - 100;
  }

  static bool _isMonthLong({required int month}) {
    final thirtyOneDays = [1, 3, 5, 7, 8, 10, 12];

    return thirtyOneDays.contains(month);
  }

  /// Високосным годом является тот год, который нацело делится на 4,
  /// кроме столетий (исключением являются столетия делящиеся на 400).
  static bool _isLeapYear({required int year}) {
    return (year % 4 == 0 && year % 100 != 0) || year % 400 == 0;
  }

  static bool _isErrorInFebruary({
    required int day,
    required int month,
    required int year,
  }) {
    return month == 2 && (_isLeapYear(year: year) ? day > 29 : day > 28);
  }

  static bool _isInputFullDateAfterCurrentDate({required String inputDateAsString}) {
    return DateTime.parse(inputDateAsString).isAfter(clock.now());
  }

  static bool _isInputMonthAndYearAfterCurrent({
    required int inputMonth,
    required int inputYear,
  }) {
    final currentMonth = clock.now().month;
    final currentYear = clock.now().year;

    if (inputYear > currentYear) {
      return true;
    } else if (inputYear < currentYear) {
      return false;
    } else {
      return inputMonth > currentMonth;
    }
  }
}

/// Преобразует строку с датой в виде dd.MM.yyyy в объект DateTime
DateTime? getDateTimeFromStringWithIncorrectOrder({required String date}) {
  final dateWithCorrectOrder = date.split('.').reversed.join('-');

  return DateTime.tryParse(dateWithCorrectOrder);
}

bool olderThan({
  required DateTime birthDate,
  required int minAge,
}) {
  final today = DateTime.now();

  final adultDate = DateTime(
    birthDate.year + minAge,
    birthDate.month,
    birthDate.day,
  );

  return adultDate.isBefore(today);
}

bool youngerThan({
  required DateTime birthDate,
  required int maxAge,
}) {
  return !olderThan(birthDate: birthDate, minAge: maxAge);
}
