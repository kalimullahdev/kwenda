import 'package:flutter/material.dart';
// import 'package:kwenda/userinterface/ui/base/custom_textfield.dart';
import 'package:kwenda/userinterface/utill/color_resources.dart';
import 'package:kwenda/userinterface/utill/dimensions.dart';

// class HomeBottomSheet extends StatelessWidget {
//   const HomeBottomSheet({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return

//   }
// }

class ImageTextButon extends StatelessWidget {
  const ImageTextButon({
    Key? key,
    this.imgSrc,
    required this.text,
    this.onTap,
    this.img,
  }) : super(key: key);

  final String? imgSrc;
  final String text;
  final void Function()? onTap;
  final Widget? img;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          SizedBox(
            width: 52,
            height: 52,
            child: img ??
                Image.asset(
                  imgSrc ?? '',
                ),
          ),
          Di.SBWS,
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: Di.FSD,
              color: Cr.blackTextColor,
            ),
          )
        ],
      ),
    );
  }
}
