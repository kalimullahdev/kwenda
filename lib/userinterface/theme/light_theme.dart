import 'package:flutter/material.dart';
import 'package:kwenda/userinterface/utill/color_resources.dart';
import 'package:kwenda/userinterface/utill/dimensions.dart';
import 'package:kwenda/userinterface/utill/font_family.dart';

ThemeData lightTheme(BuildContext context) => ThemeData(
      fontFamily: FontsFamily.sdfRegular,
      //appbar theme
      appBarTheme: const AppBarTheme(
        backgroundColor: Cr.whiteColor,

        // color: Cr.black,
        foregroundColor: Cr.black,
        titleTextStyle: TextStyle(
          color: Cr.black,
          fontFamily: FontsFamily.sdfRegular,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(Colors.white),
        fillColor: MaterialStateProperty.all(Colors.black),
      ),
      //
      primaryColor: Cr.colorPrimary,
      primaryColorDark: Cr.colorPrimary,
      colorScheme: ThemeData().colorScheme.copyWith(
            secondary: Cr.colorAccent,
          ),
      brightness: Brightness.light,
      cardColor: Colors.white,
      textSelectionTheme: Theme.of(context).textSelectionTheme.copyWith(
            selectionColor: Cr.black.withOpacity(.5),
            cursorColor: Cr.black.withOpacity(.6),
            selectionHandleColor: Cr.black.withOpacity(1),
          ),
      // focusColor: Cr.focusColor,
      // hintColor: Cr.hintColor,

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: Colors.black,
          textStyle: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
        TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
      }),
      textTheme: const TextTheme(
        button: TextStyle(color: Colors.white),
        headline1: TextStyle(fontWeight: FontWeight.w300, fontSize: Di.FSD),
        headline2: TextStyle(fontWeight: FontWeight.w400, fontSize: Di.FSD),
        headline3: TextStyle(fontWeight: FontWeight.w500, fontSize: Di.FSD),
        headline4: TextStyle(fontWeight: FontWeight.w600, fontSize: Di.FSD),
        headline5: TextStyle(fontWeight: FontWeight.w700, fontSize: Di.FSD),
        headline6: TextStyle(fontWeight: FontWeight.w800, fontSize: Di.FSD),
        caption: TextStyle(fontWeight: FontWeight.w900, fontSize: Di.FSD),
        subtitle1: TextStyle(fontSize: Di.FSD, fontWeight: FontWeight.w500),
        bodyText2: TextStyle(fontSize: Di.FSS),
        bodyText1: TextStyle(fontSize: Di.FSD, fontWeight: FontWeight.w600),
      ),
    );
