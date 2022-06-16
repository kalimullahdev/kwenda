import 'package:flutter/material.dart';
import 'package:kwenda/presentation/utill/color_resources.dart';

class WidgetWithBackground extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final Color textColor;
  final BoxBorder? border;
  final double? fontSize;
  const WidgetWithBackground({
    Key? key,
    required this.child,
    required this.backgroundColor,
    this.textColor = Cr.whiteColor,
    this.border,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor,
        border: border,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3.5, horizontal: 8),
        child: child,
      ),
    );
  }
}
