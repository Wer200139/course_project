import 'package:clokwise/features/auth/ui/widgets/box_widget.dart';
import 'package:flutter/widgets.dart';

class HowWorkWidget extends StatelessWidget {
  const HowWorkWidget({super.key});

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
                  description: 'Создаете заявку\nна подбор\ncпециалиста',
                  imageCase: 1,
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: BoxWidget(
                  number: '02',
                  description:
                      'Сервис подбирает\nэкспертов и делает \nпо ним рассылку',
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
                  description: 'Эксперты\nсоглашаются на участие\nв заявке',
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
                      'Далее в чате\nвы договариваетесь\nо дальнейших шагах',
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
