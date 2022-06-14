import 'package:flutter/material.dart';
import 'package:kwenda/presentation/utill/color_resources.dart';
import 'package:kwenda/presentation/utill/dimensions.dart';
import 'package:kwenda/presentation/utill/styles.dart';

class BankCard extends StatelessWidget {
  const BankCard({
    Key? key,
    required this.text,
    this.topWidget,
    this.onTap,
  }) : super(key: key);

  final String text;
  final Widget? topWidget;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(Di.PSD),
        decoration: Styles.boxDecoration,
        child: Column(
          children: [
            topWidget ??
                const CircleAvatar(
                  backgroundColor: ColorResources.greyColor,
                ),
            const SizedBox(height: Di.PSS),
            Text(
              text,
            )
          ],
        ),
      ),
    );
  }
}
