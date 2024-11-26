import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/avatar/bloc/avatar_bloc.dart';
import 'package:clokwise/features/repositories/profile/profile_repository.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/appbar.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/components/scaffold.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AvatarPage extends StatefulWidget {
  const AvatarPage({super.key});

  @override
  State<AvatarPage> createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  int? _selectedIndex;

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
            onTap: () => {
              CustomNavigator.pop(),
            },
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
      body: BlocProvider<AvatarBloc>(
        create: (context) => AvatarBloc(
          profileRepository: ProfileRepository(
            mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
          ),
          snackBarRepository: CustomInjector.find<SnackBarRepository>(),
        )..add(const AvatarEvent.fetchAvatarEventRequested()),
        child: BlocBuilder<AvatarBloc, AvatarState>(
            builder: (context, state) => state.maybeMap(
                success: (state) => Stack(
                      children: [
                        CustomScrollView(
                          slivers: [
                            SliverPadding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              sliver: SliverGrid(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  childAspectRatio: 1,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                ),
                                delegate: SliverChildBuilderDelegate(
                                  childCount: state.avatars.length,
                                  (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (_selectedIndex == index) {
                                            _selectedIndex = null;
                                          } else {
                                            _selectedIndex = state.avatars[index].id;
                                          }
                                        });
                                      },
                                      child: Column(
                                        children: [
                                          Stack(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                // Make the avatar circular
                                                child: Image.network(
                                                  state.avatars[index].image,
                                                  width: 80,
                                                  height: 80,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Positioned(
                                                top: 0,
                                                right: 0,
                                                child: _selectedIndex ==
                                                        state
                                                            .avatars[index].id
                                                    ? const Icon(Icons.check_circle,
                                                        color:
                                                            CwColors.primary)
                                                    : const SizedBox(),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                        Positioned(
                          bottom: 16,
                          // Adjust the bottom margin to your liking
                          left: 16,
                          right: 16,
                          child: CwElevatedButton(
                            text: 'Сохранить аватар',
                            block: true,
                            onTap: _selectedIndex != null
                                ? () => {
                                      BlocProvider.of<AvatarBloc>(context).add(
                                        AvatarEvent.saveAvatarEventRequested(
                                            id: _selectedIndex!),
                                      )
                                    }
                                : null,
                          ),
                        ),
                      ],
                    ),
                orElse: () => const SizedBox())),
      ),
    );
  }
}
