import 'package:clokwise/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoxWidget extends StatelessWidget {
  final String number;
  final String description;
  final int imageCase;

  const BoxWidget({
    super.key,
    required this.number,
    required this.description,
    required this.imageCase,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        color: const Color(0xFFE8EBEF),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 4),
            child: Text(
              number,
              style: const TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Color(0xFFDEE1E5),
              ),
            ),
          ),
          if (imageCase == 1) ...[
            Padding(
              padding: const EdgeInsets.only(left: 46, top: 2),
              child: Image.asset(width: 152, height: 124, Assets.imageImage37),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 76, top: 10),
              child: Image.asset(width: 122, height: 132, Assets.imageImage36),
            ),
          ] else if (imageCase == 2) ...[
            Padding(
              padding: const EdgeInsets.only(left: 56, top: 20),
              child:
                  SvgPicture.asset(width: 120, height: 120, Assets.imageIMac),
            )
          ] else if (imageCase == 3)
            ...[
              Padding(
                padding: const EdgeInsets.only(bottom: 14, left: 30),
                child:
                Image.asset(width: 300, height: 300, Assets.imageIPad),
              )
            ]
          else
            ...[Padding(
              padding: const EdgeInsets.only(left: 22, top: 22),
              child:
              Image.asset(width: 148, Assets.imageImage38),
            )],
          Padding(
            padding: const EdgeInsets.only(top: 118, left: 10),
            child: Text(
              description,
              style: const TextStyle(
                fontFamily: 'Inter',
                height: 0,
                fontWeight: FontWeight.w600,
                fontSize: 10,
                color: Color(0xFF0F294D),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
