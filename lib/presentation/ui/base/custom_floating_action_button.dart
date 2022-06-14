import 'package:flutter/material.dart';
import 'package:kwenda/presentation/ui/base/custom_rounded_button.dart';
import 'package:kwenda/presentation/utill/dimensions.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final String text;
  const CustomFloatingActionButton({
    Key? key,
    required this.text,
    this.onpressed,
  }) : super(key: key);
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: Di.PSOL),
        CustomRoundedButton(
          buttonText: text,
          width: Di.getScreenSize(context).width * .5,
          onpressed: onpressed ?? () {},
        ),
      ],
    );
  }
}
