import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/features/task/ui/widgets/customer/customer_task_body.dart';
import 'package:clokwise/features/task/ui/widgets/expert/expert_task_body.dart';
import 'package:clokwise/packages/components/scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskPage extends StatefulWidget {
  final bool isExpert;

  const TaskPage({super.key, required this.isExpert});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  late bool isExpert;

  @override
  void initState() {
    isExpert = widget.isExpert;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final int userId = BlocProvider.of<AuthBloc>(context).state.maybeMap(
      success: (state) => state.user.id,
      orElse: () => 0,
    );

    return CWScaffold(
      body: isExpert ? ExpertTaskBody(userId: userId) : const CustomerTaskBody(),
    );
  }
}

enum WorkExperience {
  noExperience(0, 'Опыт не важен'),
  oneYear(1, 'От 1 года'),
  threeYears(3, 'От 3 лет'),
  fiveYears(5, 'От 5 лет'),
  tenPlusYears(10, 'От 10 лет');

  final int value;
  final String label;

  const WorkExperience(this.value, this.label);
}
