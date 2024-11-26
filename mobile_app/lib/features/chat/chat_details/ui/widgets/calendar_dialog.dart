import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/chat/chat_details/bloc/chat_details_bloc.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/date_picker.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/components/textfield.dart';
import 'package:clokwise/packages/core/forms/custom_validators.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:intl/intl.dart' show DateFormat;

class CalendarDialog extends StatefulWidget {
  const CalendarDialog({super.key});

  @override
  State<CalendarDialog> createState() => _CalendarDialogState();
}

class _CalendarDialogState extends State<CalendarDialog> {
  final _titleController = FormControl<String>(
    value: '',
    validators: [Validators.delegate(CustomValidators.required())],
  );

  final _descriptionController = FormControl<String>(
    value: '',
    validators: [],
  );
  late final _dateStartController = FormControl<String?>(
    value: '',
    validators: [Validators.delegate(CustomValidators.required())],
  );
  late final _dateEndController = FormControl<String?>(
    value: '',
    validators: [Validators.delegate(CustomValidators.required())],
  );

  bool _isReadyForm = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        backgroundColor: Colors.white,
        insetPadding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 24),
                    const Text(
                      'Добавить в календарь событие',
                      style: CwTextStyles.headerModal,
                    ),
                    const SizedBox(height: 12),
                    CwTextField(
                      controller: _titleController,
                      labelText: 'Введите название',
                      hasSpaceForError: false,
                      onChanged: (_) => setState(() {
                        _isReadyForm = _getFormReadyStatus();
                      }),
                    ),
                    const SizedBox(height: 8),
                    CwTextField(
                      controller: _descriptionController,
                      labelText: 'Введите описание',
                      hasSpaceForError: false,
                      onChanged: (_) => setState(() {
                        _isReadyForm = _getFormReadyStatus();
                      }),
                    ),
                    const SizedBox(height: 8),
                    DatePicker(
                      controller: _dateStartController,
                      firstDate: DateTime.now(),
                      showTime: true,
                      labelText: 'Начало',
                      onTap: () => setState(() {
                        _isReadyForm = _getFormReadyStatus();
                      }),
                    ),
                    const SizedBox(height: 8),
                    DatePicker(
                      controller: _dateEndController,
                      firstDate: DateTime.now(),
                      showTime: true,
                      labelText: 'Завершение',
                      onTap: () => setState(() {
                        _isReadyForm = _getFormReadyStatus();
                      }),
                    ),
                    const SizedBox(height: 8),
                    CwElevatedButton(
                      text: 'Добавить',
                      onTap: _isReadyForm
                          ? () => {
                                BlocProvider.of<ChatDetailsBloc>(context).add(
                                  ChatDetailsEvent.addEventCalendar(
                                    calendarEvent: Event(
                                      title: _titleController.value!,
                                      description: _descriptionController.value,
                                      startDate: DateFormat('yyyy-MM-dd HH:mm')
                                          .parse(_dateStartController.value!),
                                      endDate: DateFormat('yyyy-MM-dd HH:mm')
                                          .parse(_dateEndController.value!),
                                    ),
                                  ),
                                ),
                                CustomNavigator.pop(),
                              }
                          : null,
                      block: true,
                      heightStyle: CwButtonHeightEnum.standard,
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
                Positioned(
                  right: 0,
                  top: 12,
                  child: CwIconButton(
                      width: 18,
                      height: 18,
                      icon: SvgPicture.asset(Assets.imageCrossClose),
                      onTap: () => {
                            CustomNavigator.maybePop(context: context),
                          }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool _getFormReadyStatus() {
    bool isTitleReady = _titleController.valid;
    bool isDescriptionReady = _descriptionController.valid;
    bool isDateStartReady = _dateStartController.valid;
    bool isDateEndReady = _dateEndController.valid;

    return isTitleReady &&
        isDescriptionReady &&
        isDateStartReady &&
        isDateEndReady;
  }
}
