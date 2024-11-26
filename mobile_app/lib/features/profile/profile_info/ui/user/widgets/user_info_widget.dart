import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class UserInfoWidget extends StatelessWidget {
  final String phoneNumber;
  final String email;

  const UserInfoWidget({
    super.key,
    required this.phoneNumber,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Основная информация', style: CwTextStyles.headerProfile),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Номер телефона',
                    style: CwTextStyles.headerSubText,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    phoneNumber,
                    style: CwTextStyles.profileInfo,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 50),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'E-mail',
                    style: CwTextStyles.headerSubText,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    email,
                    style: CwTextStyles.profileInfo,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
