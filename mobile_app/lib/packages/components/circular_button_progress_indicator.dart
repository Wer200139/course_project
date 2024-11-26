import 'package:flutter/material.dart';

class CwCircularButtonProgressIndicator extends StatelessWidget {
  final Color color;

  const CwCircularButtonProgressIndicator({
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 20,
      child: RepaintBoundary(
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: color,
        ),
      ),
    );
  }
}