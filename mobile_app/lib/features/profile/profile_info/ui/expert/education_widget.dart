import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class EducationWidget extends StatelessWidget {
  final String level;
  final String degree;
  final String nameInstitutation;
  final String nameDepartment;
  final String nameSpeciality;

  const EducationWidget({
    super.key,
    required this.level,
    required this.degree,
    required this.nameInstitutation,
    required this.nameDepartment,
    required this.nameSpeciality,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Уровень образования',
                    style: CwTextStyles.headerSubText,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    level,
                    style: CwTextStyles.profileInfo,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 58),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ученая степень',
                    style: CwTextStyles.headerSubText,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    degree,
                    style: CwTextStyles.profileInfo,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        const Text(
          'Название учебного заведения',
          style: CwTextStyles.headerSubText,
        ),
        const SizedBox(height: 12),
        Text(
          nameInstitutation,
          style: CwTextStyles.profileInfo,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 24),
        const Text(
          'Кафедра',
          style: CwTextStyles.headerSubText,
        ),
        const SizedBox(height: 12),
        Text(
          nameDepartment,
          style: CwTextStyles.profileInfo,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 24),
        const Text(
          'Специальность',
          style: CwTextStyles.headerSubText,
        ),
        const SizedBox(height: 12),
        Text(
          nameSpeciality,
          style: CwTextStyles.profileInfo,
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
