import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/profile/profile_settings/bloc/profile_settings_bloc.dart';
import 'package:clokwise/features/profile/profile_settings/ui/widgets/expert/profile_settings_expert_body.dart';
import 'package:clokwise/features/profile/profile_settings/ui/widgets/searcher/profile_settings_searcher_body.dart';
import 'package:clokwise/features/profile/common/ui/switch_expert.dart';
import 'package:clokwise/features/repositories/common/classificator/classificator_repository.dart';
import 'package:clokwise/features/repositories/profile/profile_repository.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/appbar.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/components/scaffold.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileSettingsPage extends StatefulWidget {
  final ExpertStates state;

  const ProfileSettingsPage({super.key, required this.state});

  @override
  State<ProfileSettingsPage> createState() => _ProfileSettingsPageState();
}

class _ProfileSettingsPageState extends State<ProfileSettingsPage> {
  late ExpertStates _currentTab;

  void _changeTab(ExpertStates state) {
    setState(() {
      _currentTab = state;
    });
  }

  @override
  void initState() {
    _currentTab = widget.state;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CWScaffold(
      appBar: CwAppBar(
        backgroundColor: CwColors.primary,
        title: SvgPicture.asset(
            height: 18,
            width: 18,
            Assets.imageCLOKWISE,
            color: CwColors.customWhite),
        leading: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          padding: const EdgeInsets.symmetric(vertical: 0),
          child: CwIconButton(
            width: 30,
            height: 30,
            borderRadius: 6,
            icon: SvgPicture.asset(Assets.imageArrowLeft),
            onTap: () => {CustomNavigator.pop()},
            backgroundColor: CwColors.subButtonInverse,
          ),
        ),
        actions: [
          Row(
            children: [
              const Text(
                'Ru',
                style: TextStyle(color: CwColors.customWhite),
              ),
              CwIconButton(
                icon: SvgPicture.asset(
                  Assets.imageDown,
                  color: CwColors.customWhite,
                ),
                onTap: () => setState(() {}),
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: BlocProvider(
            create: (context) => ProfileSettingsBloc(
              profileRepository: ProfileRepository(
                mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
              ),
              snackBarRepisotory: CustomInjector.find<SnackBarRepository>(),
              classificatorRepository: ClassificatorRepository(
                mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
              ),
            ),
            child: Column(
              children: [
                SwitchExpert(changeTab: _changeTab, currentTab: _currentTab),
                const SizedBox(height: 14),
                _currentTab.isExpert
                    ? const ProfileSettingsExpertBody()
                    : const ProfileSettingsSearcherBody()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
