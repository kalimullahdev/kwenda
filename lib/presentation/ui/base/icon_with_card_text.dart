import 'package:flutter/material.dart';
import 'package:kwenda/presentation/utill/color_resources.dart';
import 'package:kwenda/presentation/utill/dimensions.dart';
import 'package:kwenda/presentation/utill/styles.dart';

class IconWithTextCard extends StatelessWidget {
  const IconWithTextCard({
    Key? key,
    required this.text,
    this.iconData,
    this.donotShowShadow = false,
    this.textColor,
    this.iconColor,
    this.cardWidth,
    this.fontSize,
    this.iconSize,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  final String text;
  final IconData? iconData;
  final Widget? icon;
  final bool donotShowShadow;
  final Color? textColor;
  final Color? iconColor;
  final double? cardWidth;
  final double? fontSize;
  final double? iconSize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: cardWidth ?? 100,
        decoration: donotShowShadow
            ? Styles.boxDecoration.copyWith(
                color: ColorResources.whiteColor,
              )
            : Styles.boxDecorationWithShadow.copyWith(
                color: ColorResources.whiteColor,
              ),
        padding: const EdgeInsets.all(Di.PSES),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (icon != null)
                ? icon!
                : (iconData != null)
                    ? Icon(
                        iconData,
                        color: iconColor ?? ColorResources.blueColor,
                        size: iconSize ?? 30,
                      )
                    : const SizedBox(),
            const SizedBox(
              height: Di.PSS,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: defaultRegular.copyWith(
                color: textColor ?? ColorResources.greyColor,
                fontSize: fontSize ?? Di.FSS,
              ),
            )
          ],
        ),
      ),
    );
  }
}
