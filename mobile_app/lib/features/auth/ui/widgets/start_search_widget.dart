import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reactive_forms/reactive_forms.dart';

class StartSearchWidget extends StatelessWidget {
  final _searchExpertController = FormControl<String>(
    value: '',
    //validators: ValidatorSets.password.validators,
  );

  StartSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        color: CwColors.customWhite,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 64),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'ПОИСК\nСПЕЦИАЛИСТОВ',
                style: CwTextStyles.header1.merge(
                  const TextStyle(color: CwColors.startHeaderPrimary),
                ),
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              'Эксперты уже ждут Вас на CLOKWISE!',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Inter',
                fontStyle: FontStyle.normal,
                height: 0,
                letterSpacing: 0,
                color: CwColors.primary,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 20),
           /* Row(
              children: [
                Flexible(
                  child: CwTextField(
                    controller: _searchExpertController,
                    hintText: 'Найти специалиста',
                    hintStyle: CwTextStyles.labelTextField.merge(
                      const TextStyle(color: CwColors.subText),
                    ),
                    maxLines: 1,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset(
                        Assets.imageSearch,
                        width: 4,
                        height: 4,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  children: [
                    CwElevatedButton(
                      heightStyle: CwButtonHeightEnum.big,
                      text: 'Найти',
                      onTap: () => {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return const AuthDialog();
                          },
                        )
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    )
                  ],
                )
              ],
            ),*/
            const SizedBox(height: 36),
          ],
        ),
      ),
    );
  }
}
