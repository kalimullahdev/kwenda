import 'package:flutter/material.dart';
import 'package:kwenda/presentation/utill/color_resources.dart';
import 'package:kwenda/presentation/utill/dimensions.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    this.onPressed,
    this.text,
    this.backgroundColor,
    this.textWidget,
    this.padding,
    this.textColor,
    this.makeRounded = false,
    this.borderRadius,
    // this.width,
  }) : super(key: key);
  final void Function()? onPressed;
  final String? text;
  final Widget? textWidget;
  final Color? backgroundColor;
  final Color? textColor;
  final EdgeInsetsGeometry? padding;
  final bool makeRounded;
  final double? borderRadius;
  // final double? width;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed ?? () {},
      child: textWidget ??
          Text(
            text ?? "",
            style: TextStyle(
              color: textColor,
            ),
          ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          padding ?? const EdgeInsets.all(0),
        ),
        shape: makeRounded
            ? MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? Di.RSD),
                ),
              )
            : null,
        backgroundColor: MaterialStateProperty.all<Color>(
          backgroundColor ?? Cr.colorPrimary,
        ),
      ),
    );
  }
}
