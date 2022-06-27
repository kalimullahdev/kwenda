import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kwenda/userinterface/ui/base/rounded_icon_button.dart';
import 'package:kwenda/userinterface/utill/color_resources.dart';
import 'package:kwenda/userinterface/utill/dimensions.dart';
import 'package:kwenda/userinterface/utill/styles.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    Key? key,
  }) : super(key: key);

  static AppBar build(
    BuildContext context, {
    String? title,
    Icon? icon,
    PreferredSizeWidget? bottom,
    List<Widget>? actions,
  }) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Cr.blueColor,
        statusBarIconBrightness: Brightness.light, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
      backgroundColor: Cr.blueColor,
      elevation: 0,
      leading: RoundeIconButton(
        icon: icon ??
            const Icon(
              Icons.arrow_back_ios_new,
              color: Cr.blueColor,
              size: 17,
            ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Center(
        child: title != null
            ? Text(
                "$title      ",
                overflow: TextOverflow.ellipsis,
                style: defaultSemiBold.copyWith(
                  color: Cr.whiteColor,
                  fontSize: Di.FSD + 2,
                ),
              )
            : null,
      ),
      actions: actions,
      bottom: bottom,
    );
  }
}
