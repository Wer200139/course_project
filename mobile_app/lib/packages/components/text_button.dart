import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:flutter/material.dart';

import 'circular_button_progress_indicator.dart';

class CwTextButton extends StatelessWidget {
  final bool isLoading;
  final VoidCallback? onTap;
  final String text;
  final IconData? icon;
  final double? iconSize;
  final Widget? image;
  final Color primaryColor;
  final Color? backgroundColor;
  final bool isSmall;
  final bool block;
  final TextStyle? textStyle;
  final EdgeInsets? padding;

  double get _minimumHeight => isSmall ? 6 : 48;

  /// Проблемы, которые решает компонент:
  /// 1. кастомные стили
  /// 2. индикатор прогресса
  /// 3. TextButton с или без icon через один конструктор
  const CwTextButton({
    required this.text,
    this.isLoading = false,
    this.isSmall = false,
    this.block = false,
    this.backgroundColor,
    this.onTap,
    this.icon,
    this.iconSize,
    this.image,
    this.textStyle,
    this.padding,
    Color? primaryColor,
    super.key,
  }) : primaryColor = primaryColor ?? CwColors.primary;

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return TextButton.icon(
        style: TextButton.styleFrom(
          textStyle: textStyle,
          foregroundColor: primaryColor,
          backgroundColor: backgroundColor,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: Size(block ? double.infinity : 0, _minimumHeight),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: padding,
        ),
        icon: isLoading
            ? const SizedBox()
            : image ??
                Icon(
                  icon,
                  size: iconSize,
                ),
        label: isLoading
            ? CwCircularButtonProgressIndicator(
                color: primaryColor,
              )
            : Text(
                text,
                textAlign: TextAlign.center,
              ),
        onPressed: onTap,
      );
    }

    return TextButton(
      style: TextButton.styleFrom(
        textStyle: textStyle,
        foregroundColor: primaryColor,
        backgroundColor: backgroundColor,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: Size(block ? double.infinity : 0, _minimumHeight),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: padding,
      ),
      onPressed: onTap,
      child: isLoading
          ? CwCircularButtonProgressIndicator(
              color: primaryColor,
            )
          : Text(
              text,
              textAlign: TextAlign.center,
            ),
    );
  }
}
