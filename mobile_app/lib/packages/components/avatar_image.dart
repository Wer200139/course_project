import 'package:clokwise/generated/assets.dart';
import 'package:flutter/widgets.dart';

class AvatarImage extends StatelessWidget {
  final double diameter;
  final String? pathImage;
  final bool isBlocked;

  const AvatarImage({
    super.key,
    required this.diameter,
    this.pathImage,
    this.isBlocked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: diameter,
      height: diameter,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: isBlocked
              ? const AssetImage(Assets.imageBlockedAvatar)
              : pathImage != null
                  ? NetworkImage(pathImage!)
                  : const AssetImage(Assets.imageAvatar),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
