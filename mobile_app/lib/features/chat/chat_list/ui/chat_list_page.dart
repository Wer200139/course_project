import 'dart:math';

import 'package:clokwise/features/chat/chat_list/bloc/chat_list_bloc.dart';
import 'package:clokwise/features/chat/chat_list/ui/widgets/chat_list_body.dart';
import 'package:clokwise/packages/components/scaffold.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatListPage extends StatefulWidget {
  final bool isExpert;

  const ChatListPage({super.key, required this.isExpert});

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatListBloc>.value(
      value: context.read<ChatListBloc>()
        ..add(const ChatListEvent.fetchChatListRequested()),
      child: CWScaffold(
        key: Key('value${Random().nextInt(1000)}'),
        backgroundColor: CwColors.customWhite,
        body: ChatListBody(isExpert: widget.isExpert),
      ),
    );
  }
}
