import 'package:clokwise/packages/components/circular_button_progress_indicator.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ElevatedButtonStyle {
  static final ElevatedButtonStyle primary = ElevatedButtonStyle._(
    text: CwColors.customWhite,
    background: CwColors.primary,
  );

  static final ElevatedButtonStyle secondary = ElevatedButtonStyle._(
    text: CwColors.primaryText,
    background: CwColors.bgGray,
  );

  static final ElevatedButtonStyle reversal = ElevatedButtonStyle._(
    text: CwColors.primary,
    background: CwColors.subButton,
  );

  static final ElevatedButtonStyle delete = ElevatedButtonStyle._(
    text: CwColors.error,
    background: CwColors.bgGray,
  );

  static final ElevatedButtonStyle primaryV2 = ElevatedButtonStyle._(
    text: CwColors.separatorGray,
    background: CwColors.primary,
  );

  final Color text;
  final Color background;

  ElevatedButtonStyle._({
    required this.text,
    required this.background,
  });
}

class CwElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final ElevatedButtonStyle style;
  final bool isLoading;
  final bool block;
  final String? leadingImage;
  final IconData? leading;
  final Widget? trailing;
  final OutlinedBorder? shape;
  final CwButtonHeightEnum heightStyle;

  double get _minimumHeight => switch (heightStyle) {
        CwButtonHeightEnum.big => 48,
        CwButtonHeightEnum.standard => 42,
        CwButtonHeightEnum.small => 30,
        CwButtonHeightEnum.mini => 27,
      };

  double get _iconSize => switch (heightStyle) {
        CwButtonHeightEnum.big => 24,
        CwButtonHeightEnum.standard => 24,
        CwButtonHeightEnum.small => 20,
        CwButtonHeightEnum.mini => 14,
      };

  TextStyle get _textTheme => heightStyle == CwButtonHeightEnum.standard
      ? CwTextStyles.activatedButton
      : CwTextStyles.smallButton;

  bool get _isEnabled => onTap != null;

  CwElevatedButton({
    required this.text,
    ElevatedButtonStyle? style,
    super.key,
    this.onTap,
    this.leading,
    this.isLoading = false,
    this.block = false,
    this.leadingImage,
    this.trailing,
    this.heightStyle = CwButtonHeightEnum.big,
    this.shape,
  }) : style = style ?? ElevatedButtonStyle.primary;

  @override
  Widget build(BuildContext context) {
    // todo переделать на FilledButton
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:  style.background,
        minimumSize: Size(0, _minimumHeight),
        shape: shape ??
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
      ),
      onPressed: isLoading ? null : onTap,
      child: Row(
        mainAxisSize: block ? MainAxisSize.max : MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: isLoading
            ? [
                CwCircularButtonProgressIndicator(
                  color: style.text,
                ),
              ]
            : [
                if (leading != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Icon(
                      leading,
                      size: _iconSize,
                      color: _isEnabled ? style.text : CwColors.separatorGray,
                    ),
                  ),
                if (leadingImage != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: SvgPicture.asset(leadingImage!,
                        width: _iconSize,
                        height: _iconSize,
                        color: _isEnabled ? style.text : CwColors.separatorGray),
                  ),
                Flexible(
                  child: Text(
                    text,
                    style: _textTheme.merge(TextStyle(
                      color: _isEnabled ? style.text : CwColors.separatorGray,
                    )),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (trailing != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: trailing!,
                  ),
              ],
      ),
    );
  }
}

enum CwButtonHeightEnum {
  big,
  standard,
  small,
  mini,
}
