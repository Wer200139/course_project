abstract class CustomValidationMessages {
  static String required = 'Обязательное поле';
  static String cyrillic = 'Только кириллица';
  static String english = 'Только латиница';
  static String minLength = 'Недостаточно символов';
  static String min = 'Недостаточно символов';
  static String max = 'Максимальная длина превышена';
  static String invalidMail = 'Неверно введена почта';
 // static String blockedEmailDomain = AppLocalizations.of(contextGlobal!)!.blockedDomain;
  static String date = 'Неверная дата';
  static String phoneNumber = 'Неверный номер телефона';
  static String site = 'Укажите веб-сайт';
  static String number = 'Только цифры';
  static String letters = 'Только символы';
  static String invalidPassword = 'Пароль должен быть длиннее 6 символов и состоять из латиницы и символов';
  static String noMessage = '';

  static String maxLength(int value) {
    return 'Максимальное количество символов $value'; // ${pluralize(value, ResWordsForm.symbolGenitive).toLowerCase()}';
  }

  static String lengthRange(int minLength, int maxLength) {
    return 'Длина строки должна быть не менее $minLength и не более $maxLength'; // ${pluralize(maxLength, ResWordsForm.symbolGenitive).toLowerCase()}';
  }
}
