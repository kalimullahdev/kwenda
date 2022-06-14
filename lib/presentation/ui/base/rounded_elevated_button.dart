import 'package:flutter/material.dart';
import 'package:kwenda/presentation/utill/color_resources.dart';
import 'package:kwenda/presentation/utill/dimensions.dart';

class RoundedElevatedButton extends StatelessWidget {
  const RoundedElevatedButton({
    Key? key,
    this.onPressed,
    this.text,
    this.backgroundColor,
    this.textWidget,
    this.padding,
    // this.width,
  }) : super(key: key);
  final void Function()? onPressed;
  final String? text;
  final Widget? textWidget;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  // final double? width;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed ?? () {},
      child: textWidget ?? Text(text ?? ""),
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          padding ?? const EdgeInsets.all(0),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          backgroundColor ?? ColorResources.blueColor,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Di.RSD),
          ),
        ),
      ),
    );
  }
}
