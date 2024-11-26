import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/appbar.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/components/scaffold.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChangeAvatarModal extends StatefulWidget {
  const ChangeAvatarModal({super.key});

  @override
  State<ChangeAvatarModal> createState() => _ChangeAvatarModalState();
}

class _ChangeAvatarModalState extends State<ChangeAvatarModal> {
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
              onTap: () => {},
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
        body: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  sliver: SliverGrid(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              if (_selectedIndex == index) {
                                _selectedIndex = null;
                              } else {
                                _selectedIndex = index;
                              }
                            });
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Image.network(
                                  'https://picsum.photos/200/300',
                                  width: double.infinity,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text('Элемент $index'),
                                    ),
                                    _selectedIndex == index
                                        ? const Icon(Icons.check_circle,
                                            color: Colors.green)
                                        : const Icon(Icons.circle,
                                            color: Colors.grey),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      childCount: 15,
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 16, // Adjust the bottom margin to your liking
              left: 16,
              right: 16,
              child: CwElevatedButton(
                text: 'Сохранить аватар',
                block: true,
                onTap: () => {},
              ),
            ),
          ],
        ));
  }
}
