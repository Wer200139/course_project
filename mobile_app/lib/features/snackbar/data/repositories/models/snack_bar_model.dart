class SnackBarModel {
  final String text;
  final SnackBarTypeEnum type;

  const SnackBarModel({
    required this.text,
    required this.type,
  });
}

enum SnackBarTypeEnum {
  info,
  push,
  success,
  warning,
  error;

  bool get isInfo => this == SnackBarTypeEnum.info;
  bool get isPush => this == SnackBarTypeEnum.push;
  bool get isSuccess => this == SnackBarTypeEnum.success;
  bool get isWarning => this == SnackBarTypeEnum.warning;
  bool get isError => this == SnackBarTypeEnum.error;
}
