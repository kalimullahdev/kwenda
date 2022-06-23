import 'package:flutter/material.dart';
import 'package:kwenda/presentation/utill/color_resources.dart';
import 'package:kwenda/presentation/utill/dimensions.dart';

class Styles {
  static final List<BoxShadow> boxShadow = [
    BoxShadow(
      color: Colors.black.withOpacity(0.1),
      spreadRadius: 1,
      blurRadius: 7,
      offset: const Offset(0, 3), // changes position of shadow
    ),
  ];

  static const BoxDecoration boxDecoration = BoxDecoration(
    color: Cr.whiteColor,
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  );
  static final BoxDecoration boxDecorationRoundedShadow = BoxDecoration(
    color: Cr.whiteColor,
    boxShadow: Styles.boxShadow,
    borderRadius: const BorderRadius.all(
      Radius.circular(300),
    ),
  );
  static final BoxDecoration boxDecorationWithShadow = BoxDecoration(
    color: Cr.whiteColor,
    boxShadow: Styles.boxShadow,
    borderRadius: const BorderRadius.all(
      Radius.circular(10),
    ),
  );
}

// borderRadius: BorderRadius.circular(4),

const defaultRegular = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: Di.FSD,
  fontWeight: FontWeight.w400,
  color: Cr.blackColor,
);

const defaultThin = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: Di.FSS,
  fontWeight: FontWeight.w200,
  color: Cr.blackColor,
);
const defaultSemiBold = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: Di.FSD,
  color: Cr.blackColor,
  fontWeight: FontWeight.w500,
);
const defaultMedium = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: Di.FSD,
  color: Cr.blackColor,
  fontWeight: FontWeight.w600,
);

const defaultBold = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: Di.FSD,
  fontWeight: FontWeight.w700,
);
const defaultExtraBold = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: Di.FSD,
  fontWeight: FontWeight.w900,
);
const defaultRegularLarge = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: Di.FSL,
  fontWeight: FontWeight.w700,
);

const defaultRegularOverTooLarge = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: Di.FSOTL,
  fontWeight: FontWeight.w700,
);
