import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/profile/profile_info/ui/user/modals/choose_task_dialog.dart';
import 'package:clokwise/features/profile/profile_info/ui/user/modals/create_task_dialog.dart';
import 'package:clokwise/features/task/bloc/task_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskDialog extends StatefulWidget {
  final int id;

  const TaskDialog({super.key, required this.id});

  @override
  State<TaskDialog> createState() => _TaskDialogState();
}

class _TaskDialogState extends State<TaskDialog> {
  bool isCreatingMode = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<TaskBloc, TaskState>(
      listener: (context, state) =>
          state.maybeMap(
            success: (_) => CustomNavigator.pop(),
            orElse: () => false,
          ),
      child: isCreatingMode
          ? CreateTaskDialog(
        userId: widget.id,
      )
          : ChooseTaskDialog(
        onTap: () =>
            setState(
                  () {
                isCreatingMode = true;
              },
            ),
        userId: widget.id,
      ),
    );
  }
}
