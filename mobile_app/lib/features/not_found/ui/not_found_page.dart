import 'package:flutter/widgets.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Упс... Сусасин завел вас куда-то не туда'),
    );
  }
}
