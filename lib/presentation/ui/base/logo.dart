import 'package:flutter/material.dart';
import 'package:kwenda/presentation/utill/dimensions.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:kwenda/presentation/utill/images.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
    this.fontSize,
    this.widthBetweenText,
    this.width,
  }) : super(key: key);

  final double? fontSize;
  final double? widthBetweenText;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Images.logo,
      width: width ?? Di.WSL,
    );
  }
}
