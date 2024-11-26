import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/search/ui/modals/choose_search_task_dialog.dart';
import 'package:clokwise/features/search/ui/modals/create_search_task_dialog.dart';
import 'package:clokwise/features/task/bloc/task_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InviteDialog extends StatefulWidget {
  final List<int> ids;

  const InviteDialog({super.key, required this.ids});

  @override
  State<InviteDialog> createState() => _InviteDialogState();
}

class _InviteDialogState extends State<InviteDialog> {
  bool isCreatingMode = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<TaskBloc, TaskState>(
      listener: (context, state) => state.maybeMap(
        success: (_) => CustomNavigator.pop(),
        orElse: () => false,
      ),
      child: isCreatingMode
          ? CreateSearchTaskDialog(
              userIds: widget.ids,
            )
          : ChooseSearchTaskDialog(
              onTap: () => setState(
                () {
                  isCreatingMode = true;
                },
              ),
              userIds: widget.ids,
            ),
    );
  }
}
