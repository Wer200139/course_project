import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:flutter/material.dart';

class CwCheckbox extends StatefulWidget {
  final Widget label;
  final Function(bool) onChanged;
  final bool initialValue;

  const CwCheckbox({
    required this.onChanged,
    required this.label,
    this.initialValue = false,
    super.key,
  });

  @override
  State<CwCheckbox> createState() => _CwCheckboxState();
}

class _CwCheckboxState extends State<CwCheckbox> {
  bool isChecked = false;

  @override
  void initState() {
    isChecked = widget.initialValue;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) => {
            setState(() {
              widget.onChanged(value!);
              isChecked = !isChecked;
            })
          },
          checkColor: CwColors.customWhite,
          activeColor: CwColors.primary,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          side: const BorderSide(width: 0.5, color: CwColors.separatorGray),
        ),
        Flexible(child: widget.label)
      ],
    );
  }
}
