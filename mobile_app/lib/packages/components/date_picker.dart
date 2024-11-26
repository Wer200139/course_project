import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:reactive_forms/reactive_forms.dart';

class DatePicker<T> extends StatelessWidget {
  final FormControl<T> controller;
  final String labelText;
  final VoidCallback onTap;
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final bool showTime;

  const DatePicker({
    super.key,
    required this.controller,
    this.labelText = '',
    required this.onTap,
    this.initialDate,
    this.firstDate,
    this.lastDate,
    this.showTime = false,
  });

  @override
  Widget build(BuildContext context) {
    return CwTextField(
        controller: controller,
        hasSpaceForError: false,
        labelText: labelText,
        readOnly: true,
        prefixIcon: SvgPicture.asset(Assets.imageCalendar, fit: BoxFit.none),
        onTap: (control) async {
          final DateTime? dateTime = await _showDateTimePicker(
              context: context,
              firstDate: firstDate,
              lastDate: lastDate,
              initialDate: initialDate,
              showTime: showTime);

          if (dateTime != null) {
            controller.value =
                DateFormat(showTime ? 'yyyy-MM-dd HH:mm' : 'yyyy-MM-dd')
                    .format(dateTime) as T?;
          }
          onTap();
        });
  }
}

Future<DateTime?> _showDateTimePicker({
  required BuildContext context,
  required bool showTime,
  DateTime? initialDate,
  DateTime? firstDate,
  DateTime? lastDate,
}) async {
  initialDate ??= DateTime.now();
  firstDate ??= DateTime(1999);
  lastDate ??= DateTime(3000);

  final DateTime? selectedDate = await showDatePicker(
    context: context,
    initialDate: initialDate,
    firstDate: firstDate,
    lastDate: lastDate,
  );

  if (selectedDate == null) {
    return null;
  }

  if (!context.mounted) {
    return selectedDate;
  }

  if (showTime) {
    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(selectedDate),
    );

    if (selectedTime != null) {
      return DateTime(
        selectedDate.year,
        selectedDate.month,
        selectedDate.day,
        selectedTime.hour,
        selectedTime.minute,
      );
    }
  }

  return selectedDate;
}
