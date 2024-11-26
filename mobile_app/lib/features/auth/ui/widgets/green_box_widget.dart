import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/widgets.dart';

class GreenBoxWidget extends StatelessWidget {
  const GreenBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
          color: CwColors.primary,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 24, vertical: 20),
              child: Text(
                'Мы формируем уникальную базу специалистов без ограничений по категориям\nи опыту'
                    .toUpperCase(),
                textDirection: TextDirection.ltr,
                style: CwTextStyles.header2.merge(
                  const TextStyle(fontSize: 28),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, bottom: 18),
              child: Text(
                'Например, в категории "Медицина" вы можете выбрать подкатегорию\n"Стоматология" или "Психиатрия", в зависимости от вашей потребности',
                textDirection: TextDirection.ltr,
                style: CwTextStyles.headerSubText.merge(
                  const TextStyle(
                      color: CwColors.subButtonDisabledInverse,
                      fontSize: 14),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
