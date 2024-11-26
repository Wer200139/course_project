
import 'package:clokwise/features/task/ui/widgets/expert/all_requests/all_request_widget.dart';
import 'package:clokwise/features/task/ui/widgets/expert/applications/application_widget.dart';
import 'package:clokwise/features/task/ui/widgets/expert/expert_tasks_switch.dart';
import 'package:flutter/material.dart';

class ExpertTaskBody extends StatefulWidget {
  final int userId;

  const ExpertTaskBody({super.key, required this.userId});

  @override
  State<ExpertTaskBody> createState() => _ExpertTaskBodyState();
}

class _ExpertTaskBodyState extends State<ExpertTaskBody> {
  ResponseStates _currentTab = ResponseStates.all;

  void _changeTab(ResponseStates state) {
    setState(() {
      _currentTab = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          sliver: SliverMainAxisGroup(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const SizedBox(height: 12),
                    ExpertTasksSwitch(
                        changeTab: _changeTab, currentTab: _currentTab),
                  ],
                ),
              ),
              SliverFillRemaining(
                child: _currentTab.isAll
                    ? AllRequestWidget(userId: widget.userId)
                    : ApplicationWidget(userId: widget.userId),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
