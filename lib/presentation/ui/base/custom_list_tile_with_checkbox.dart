import 'package:flutter/material.dart';
import 'package:kwenda/presentation/ui/base/circular_avatar_with_logo.dart';
import 'package:kwenda/presentation/ui/base/custom_list_tile.dart';
import 'package:kwenda/presentation/utill/color_resources.dart';
import 'package:kwenda/presentation/utill/dimensions.dart';

class CustomListTileWithCheckBox extends StatelessWidget {
  const CustomListTileWithCheckBox({
    Key? key,
    required this.title,
    required this.subTitle,
    this.imgSrc,
    this.isChecked = false,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String? imgSrc;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return CustomListTile(
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isChecked ? Icons.check_circle : Icons.circle_outlined,
            color: isChecked ? Cr.blueColor : Cr.lightBlueButton,
          ),
          const SizedBox(width: Di.PSD),
          CircularAvatarWithLogo(
            avatarBackgroundColor: Cr.lightBlueButton,
            avatarText: title,
          ),
        ],
      ),
      title: title,
      subTitle: subTitle,
    );
  }
}
