import 'package:flutter/material.dart';

import '../ui_kit/colors.dart';

class CwIconButton extends StatelessWidget {
  final double width;
  final double height;
  final Widget icon;
  final VoidCallback onTap;
  final Function(TapDownDetails)? onTappedDown;
  final bool isLoading;
  final Color? backgroundColor;
  final double? borderRadius;
  final EdgeInsets? margin;

  //TODO: описать подробней
  /// Решает проблему пропадания сплеша на дефолтных icon button
  const CwIconButton({
    required this.icon,
    required this.onTap,
    this.width = 40,
    this.height = 40,
    this.borderRadius = 100,
    this.isLoading = false,
    this.backgroundColor,
    this.margin,
    super.key,
    this.onTappedDown,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: margin ?? const EdgeInsets.only(left: 4, bottom: 4),
        width: width,
        height: height,
        color: Colors.transparent,
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: isLoading ? null : onTap,
          onTapDown: isLoading ? null : onTappedDown,
          child: Ink(
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
              decoration: BoxDecoration(
                color: backgroundColor ?? Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(borderRadius!)),
              ),
              child: isLoading
                  ? Center(
                      child: SizedBox.square(
                        dimension: width,
                        child: const RepaintBoundary(
                          child: CircularProgressIndicator(
                            color: CwColors.primary,
                            strokeWidth: 2,
                          ),
                        ),
                      ),
                    )
                  : Center(child: icon)),
        ),
      ),
    );
  }
}
