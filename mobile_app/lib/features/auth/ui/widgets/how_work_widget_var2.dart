import 'package:clokwise/features/auth/ui/widgets/box_widget.dart';
import 'package:flutter/widgets.dart';

class HowWorkWidgetVar2 extends StatelessWidget {
  const HowWorkWidgetVar2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: BoxWidget(
                  number: '01',
                  description: 'Введите параметры самостоятельного\nпоиска',
                  imageCase: 1,
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: BoxWidget(
                  number: '02',
                  description: 'Сервис найдет\nвсе анкеты походящих экспертов',
                  imageCase: 2,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: BoxWidget(
                  number: '03',
                  description: 'Создайте рассылку\nпо подходящим\nэкспертам',
                  imageCase: 3,
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: BoxWidget(
                  number: '04',
                  description:
                      'Далее в чате вы договариваетесь о\nдальнейших шагах',
                  imageCase: 4,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
