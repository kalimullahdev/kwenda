import 'package:flutter/material.dart';
import 'package:kwenda/presentation/utill/color_resources.dart';
import 'package:kwenda/presentation/utill/dimensions.dart';
import 'package:kwenda/presentation/utill/styles.dart';

class CircularAvatarWithLogo extends StatelessWidget {
  const CircularAvatarWithLogo({
    Key? key,
    this.avatarBackgroundColor,
    this.avatarText,
  }) : super(key: key);

  final Color? avatarBackgroundColor;
  final String? avatarText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: Di.PSS - 2),
          child: CircleAvatar(
            child: avatarText != null
                ? Text(
                    avatarText![0],
                    style: defaultMedium.copyWith(
                      color: ColorResources.whiteColor,
                      fontSize: Di.FSD + 2,
                    ),
                  )
                : null,
            backgroundColor: avatarBackgroundColor ?? ColorResources.greyColor,
          ),
        ),
        const Positioned(
          right: 0,
          bottom: 1,
          child: CircleAvatar(
            radius: 9,
            backgroundColor: ColorResources.blueColor,
            // backgroundImage: logoImage,
          ),
        ),
      ],
    );
  }
}
