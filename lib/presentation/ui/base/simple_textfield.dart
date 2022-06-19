import 'package:flutter/material.dart';
import 'package:kwenda/presentation/utill/color_resources.dart';
import 'package:kwenda/presentation/utill/dimensions.dart';
import 'package:kwenda/presentation/utill/strings.dart';

class SimpleTextField extends StatelessWidget {
  const SimpleTextField({
    Key? key,
    this.hintText,
  }) : super(key: key);

  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2),
      ),
      child: TextField(
        decoration: InputDecoration(
          // suffixIcon: const Icon(
          //   Icons.info,
          //   color: Cr.redIconColor,
          // ),
          contentPadding: const EdgeInsets.symmetric(horizontal: Di.PSD),
          hintStyle: const TextStyle(
            fontSize: Di.FSD,
            color: Cr.grey40,
          ),
          border: InputBorder.none,
          errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
            color: Cr.redIconColor,
          )),
          hintText: hintText,
        ),
      ),
    );
  }
}
