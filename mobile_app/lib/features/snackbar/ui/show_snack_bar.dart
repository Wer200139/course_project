import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void showSnackBar({
  required BuildContext context,
  required Widget content,
  required Color color,
  required String header,
  required String image,
  required bool isYellow,
  SnackBarAction? action,
}) =>
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.only(bottom: 40, left: 10, right: 10),
          showCloseIcon: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          content: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(image),
              const SizedBox(width: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    header,
                    style: TextStyle(
                        color: isYellow ? const Color(0xFF0F294D) : null),
                    overflow: TextOverflow.fade,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: content),
                ],
              ),
            ],
          ),
          action: action,
          backgroundColor: color,
        ),
      );

void showTopSnackBar({
  required BuildContext context,
  required Widget content,
  required Color color,
  SnackBarAction? action,
}) =>
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          duration: const Duration(seconds: 8),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height - 180,
            left: 10,
            right: 10,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          content: content,
          action: action,
          backgroundColor: color,
        ),
      );
