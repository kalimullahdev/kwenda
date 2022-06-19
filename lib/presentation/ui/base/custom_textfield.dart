import 'package:flutter/material.dart';
import 'package:kwenda/presentation/utill/color_resources.dart';
import 'package:kwenda/presentation/utill/dimensions.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.leading,
    this.hintText,
  }) : super(key: key);
  final Widget? leading;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 50,
            width: 53,
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
            ),
            child: Center(
              child: leading,
            ),
          ),
          Di.SBWD,
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                // suffixIcon: const Icon(
                //   Icons.info,
                //   color: Cr.redIconColor,
                // ),
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
          ),
        ],
      ),
    );
  }
}
