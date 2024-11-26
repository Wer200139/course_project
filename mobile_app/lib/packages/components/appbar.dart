import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../ui_kit/colors.dart';

class CwAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height; // kToolbarHeight
  final bool isElevation;
  final Color? backgroundColor;
  final bool isModal;
  final bool isLeading;
  final Widget? leading;
  final double? leadingWidth;
  final VoidCallback? onTapLeading;
  final Widget? title;
  final double? titleSpacing;
  final bool centerTitle;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final Widget? flexibleSpace;

  @override
  Size get preferredSize => Size.fromHeight(
    bottom == null ? height : height + bottom!.preferredSize.height,
  );

  const CwAppBar({
    this.backgroundColor,
    this.leading,
    this.leadingWidth,
    this.onTapLeading,
    this.title,
    this.titleSpacing,
    this.actions,
    this.bottom,
    this.flexibleSpace,
    this.height = 44,
    this.isElevation = false,
    this.centerTitle = true,
    this.isModal = false,
    this.isLeading = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: centerTitle,
      titleSpacing: titleSpacing,
      elevation: isElevation ? 1 : 0,
      leadingWidth: leadingWidth,
      backgroundColor: backgroundColor,
      leading: isLeading
          ? leading ??
          CwIconButton(
            icon: leading ??
                SvgPicture.asset(Assets.assetsImageLogIn, color: CwColors.primary),
            onTap: onTapLeading ??
                    () => CustomNavigator.maybePop(context: context),
          )
          : null,
      title: title,
      actions: actions,
      bottom: bottom,
      flexibleSpace: flexibleSpace,
    );
  }
}