import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:flutter/material.dart';

class PageLoadingIndicator extends StatelessWidget {
  const PageLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 42,
        height: 42,
        child: RepaintBoundary(
          child: CircularProgressIndicator(
            color: CwColors.primary,
            strokeWidth: 3.2,
          ),
        ),
      ),
    );
  }
}

class ModalLoadingIndicator extends StatelessWidget {
  const ModalLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      heightFactor: 10,
      child: SizedBox(
        width: 42,
        height: 42,
        child: RepaintBoundary(
          child: CircularProgressIndicator(
            color: CwColors.primary,
            strokeWidth: 3.2,
          ),
        ),
      ),
    );
  }
}
