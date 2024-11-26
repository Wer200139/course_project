import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class CompanyInfoWidget extends StatelessWidget {
  final String organizationName;
  final String inn;
  final String webSite;
  final String description;

  const CompanyInfoWidget({
    super.key,
    required this.organizationName,
    required this.inn,
    required this.webSite,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Моя компания', style: CwTextStyles.headerProfile),
          const SizedBox(height: 12),
          const Text(
            'Название компании',
            style: CwTextStyles.headerSubText,
          ),
          const SizedBox(height: 12),
          Text(
            organizationName,
            style: CwTextStyles.profileInfo,
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'ИНН',
                      style: CwTextStyles.headerSubText,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      inn,
                      style: CwTextStyles.profileInfo,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 56),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Сайт',
                      style: CwTextStyles.headerSubText,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      webSite,
                      style: CwTextStyles.profileInfo,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          const Text(
            'Описание компании',
            style: CwTextStyles.headerSubText,
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: CwTextStyles.profileInfo,
          ),
        ],
      ),
    );
  }
}
