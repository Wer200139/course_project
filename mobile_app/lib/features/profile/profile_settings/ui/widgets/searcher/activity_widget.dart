import 'package:clokwise/features/profile/profile_settings/bloc/profile_settings_bloc.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/textfield.dart';
import 'package:clokwise/packages/core/forms/custom_validators.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ActivityWidget extends StatefulWidget {
  final String website;
  final String description;

  const ActivityWidget({
    super.key,
    required this.website,
    required this.description,
  });

  @override
  State<ActivityWidget> createState() => _ActivityWidgetState();
}

class _ActivityWidgetState extends State<ActivityWidget> {
  final _siteController = FormControl<String>(
    value: '',
    validators: [
      Validators.delegate(CustomValidators.required()),
    ],
  );
  final _descriptionController = FormControl<String>(
    value: '',
    validators: [
      Validators.delegate(CustomValidators.required()),
    ],
  );
  bool _isFormReady = false;

  @override
  void initState() {
    _siteController.value = widget.website.replaceFirst('https://', '');
    _descriptionController.value = widget.description;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: CwColors.customWhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Деятельность',
            style: CwTextStyles.nameText,
          ),
          const SizedBox(height: 12),
          CwTextField(
            controller: _siteController,
            labelText: 'Сайт',
            prefixText: 'https://',
            maxLines: 1,
            prefixIcon:
                SvgPicture.asset(fit: BoxFit.none, Assets.image04Building),
            onChanged: (value) => setState(() {
              _isFormReady = _getFormReadyStatus();
            }),
          ),
          CwTextField(
            controller: _descriptionController,
            labelText: 'Описание компании',
            alignHintAndLabel: false,
            minLines: 3,
            onChanged: (value) => setState(() {
              _isFormReady = _getFormReadyStatus();
            }),
          ),
          CwElevatedButton(
            text: 'Сохранить изменения',
            onTap: _isFormReady
                ? () => {
                      BlocProvider.of<ProfileSettingsBloc>(context).add(
                        ProfileSettingsEvent.updateActivityRequested(
                            website: 'https://${_siteController.value!.trim().replaceFirst('https://', '')}',
                            description: _descriptionController.value!),
                      )
                    }
                : null,
            block: true,
            heightStyle: CwButtonHeightEnum.standard,
          ),
        ],
      ),
    );
  }

  bool _getFormReadyStatus() {
    bool siteIsReady = _siteController.value!.isNotEmpty;
    bool descIsReady = _descriptionController.value!.isNotEmpty;

    return siteIsReady && descIsReady;
  }
}
