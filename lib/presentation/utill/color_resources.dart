import 'package:flutter/material.dart';

class ColorResources {
  // Theme Color
  static const Color colorPrimary = Color(0xff186BFE);
  static const Color underlineColor = Color(0xFFCCCCCC);
  static const Color whiteColor = Colors.white;
  static const Color greyColor = Color(0xff7D90AA);
  static const Color greyLightColor = Colors.white10;
  static const Color greyLightTwoColor = Color(0xffD1D8E1);
  static const Color greyDark = Color(0xff979797);

  // Text color
  static const Color greenTextColor = Color(0xff2ABA00);
  static const Color lightGreenTextColor = Color(0xffB8E986);
  static const Color darkBlueTextColor = Color(0xff4F6C8D);
  static const Color orangeTextColor = Color(0xffFEA400);
  static const Color redTextColor = Color(0xffFE0000);
  static const Color blackTextColor = Color(0xff092058);
  static const Color greyTextColor = Color(0xff7D90AA);
  static const Color blueTextColor = Color(0xff00B4FE);
  static const Color lightBlueButton = Color(0xffCADBFB);

  // App color
  static const Color blackColor = Color(0xff092058);
  static const Color blueColor = colorPrimary;
  static const Color focusColor = Color(0xFFADC4C8);
  static const Color hintColor = Color(0xFF52575C);
  static const Color success = Color(0xff00CC96);
  static const Color disableButton = Color(0xffCADBFB);
  static const Color errorColor = Color(0xffFE0000);

  //Icons color
  static const Color blueIconColor = Color(0xff00B4FE);
  static const Color redIconColor = Color(0xffFE0000);
  static const Color greenIconColor = Color(0xff47C78F);
  static const Color blueDarkIconColor = Color(0xff4985FE);
  static const Color yellowIconColor = Color(0xffFEA400);
  static const LinearGradient blueLinearGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 1.0],
    colors: [
      ColorResources.blueColor,
      ColorResources.blueColor,
    ],
  );

  static const LinearGradient greenLinearGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 1.0],
    colors: [
      Color(0xff26B9D1),
      Color(0xff13C2B4),
    ],
  );
}
