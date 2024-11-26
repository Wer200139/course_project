import 'package:clokwise/features/profile/profile_settings/bloc/profile_settings_bloc.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/textfield.dart';
import 'package:clokwise/packages/core/forms/custom_validators.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CompanyWidget extends StatefulWidget {
  final String organizationName;
  final String tin;
  final String site;
  final String description;

  const CompanyWidget({
    super.key,
    required this.organizationName,
    required this.tin,
    required this.site,
    required this.description,
  });

  @override
  State<CompanyWidget> createState() => _CompanyWidgetState();
}

class _CompanyWidgetState extends State<CompanyWidget> {
  final _nameCompanyController = FormControl<String>(
    value: '',
    validators: [Validators.delegate(CustomValidators.required())],
  );
  final _tinController = FormControl<String>(
    value: '',
    validators: [Validators.delegate(CustomValidators.required()), Validators.delegate(CustomValidators.onlyNumbers)],
  );
  final _siteController = FormControl<String>(
    value: '',
    validators: [Validators.delegate(CustomValidators.required())],
  );
  final _descriptionController = FormControl<String>(
    value: '',
    validators: [Validators.delegate(CustomValidators.required())],
  );
  bool _isFormReady = false;

  @override
  void initState() {
    _nameCompanyController.value = widget.organizationName;
    _tinController.value = widget.tin;
    _siteController.value = widget.site.replaceFirst('https://', '');
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
            'Моя компания',
            style: CwTextStyles.nameText,
          ),
          const SizedBox(height: 12),
          CwTextField(
            controller: _nameCompanyController,
            labelText: 'Название компании',
            prefixIcon:
                SvgPicture.asset(fit: BoxFit.none, Assets.image04Building),
            onChanged: (value) => _isFormReady = _getFormReadyStatus(),
          ),
          Row(
            children: [
              Expanded(
                child: CwTextField(
                  controller: _tinController,
                  keyboardType: TextInputType.number,
                  labelText: 'ИНН',
                  maxLines: 1,
                  onChanged: (_) => setState(() {
                    _isFormReady = _getFormReadyStatus();
                  }),
                  prefixIcon:
                      SvgPicture.asset(fit: BoxFit.none, Assets.imageDocument),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: CwTextField(
                  controller: _siteController,
                  labelText: 'Сайт',
                  prefixText: 'https://',
                  maxLines: 1,
                  onChanged: (_) => setState(() {
                    _isFormReady = _getFormReadyStatus();
                  }),
                  prefixIcon:
                      SvgPicture.asset(fit: BoxFit.none, Assets.imageSite),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          CwTextField(
            controller: _descriptionController,
            labelText: 'Описание компании',
            alignHintAndLabel: false,
            minLines: 3,
            onChanged: (_) => setState(() {
              _isFormReady = _getFormReadyStatus();
            }),
          ),
          CwElevatedButton(
            text: 'Сохранить изменения',
            onTap: _isFormReady
                ? () => {
                      BlocProvider.of<ProfileSettingsBloc>(context).add(
                        ProfileSettingsEvent.updateCompanyRequested(
                            website: 'https://${_siteController.value!.trim().replaceFirst('https://', '')}',
                            description: _descriptionController.value!,
                            tin: int.tryParse(_tinController.value!)!,
                            name: _nameCompanyController.value!),
                      ),
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
    bool descReady = _descriptionController.value!.isNotEmpty;
    bool siteReady = _siteController.value!.isNotEmpty;
    bool tinReady = _tinController.value!.isNotEmpty;
    bool nameReady = _nameCompanyController.value!.isNotEmpty;

    return descReady && siteReady && tinReady && nameReady;
  }
}
