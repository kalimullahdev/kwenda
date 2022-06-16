import 'package:flutter/material.dart';

class Di {
  // Font Size can be also used for icon size
  static const double FSES = 10.0;
  static const double FSS = 12.0;
  static const double FSD = 15.0;
  static const double FSL = 18.0;
  static const double FSEL = 20.0;
  static const double FSOL = 24.0;
  static const double FSOTL = 32.0;

  // Font Size can be also used for icon size
  static const double ISES = 12.0;
  static const double ISS = 15.0;
  static const double ISD = 18.0;
  static const double ISL = 20.0;
  static const double ISEL = 24.0;
  static const double ISOL = 32.0;
  static const double ISOTL = 32.0;

  // Width Size
  static const double WSETS = 50.0;
  static const double WSES = 100.0;
  static const double WSS = 150.0;
  static const double WSD = 200.0;
  static const double WSL = 250.0;
  static const double WSEL = 300.0;
  static const double WSOL = 350.0;
  static const double WSOTL = 400.0;

  // SizedBox Width
  static const SizedBox SBWETS = SizedBox(width: PSETS);
  static const SizedBox SBWES = SizedBox(width: PSES);
  static const SizedBox SBWS = SizedBox(width: PSS);
  static const SizedBox SBWD = SizedBox(width: PSD);
  static const SizedBox SBWL = SizedBox(width: PSL);
  static const SizedBox SBWEL = SizedBox(width: PSEL);
  static const SizedBox SBWOV = SizedBox(width: PSOL);
  static const SizedBox SBWOTL = SizedBox(width: PSOTL);
  static const SizedBox SBW40 = SizedBox(width: PS40);

  // SizedBox Height
  static const SizedBox SBHETS = SizedBox(height: PSETS);
  static const SizedBox SBHES = SizedBox(height: PSES);
  static const SizedBox SBHS = SizedBox(height: PSS);
  static const SizedBox SBHD = SizedBox(height: PSD);
  static const SizedBox SBHL = SizedBox(height: PSL);
  static const SizedBox SBHEL = SizedBox(height: PSEL);
  static const SizedBox SBHOL = SizedBox(height: PSOL);
  static const SizedBox SBHOTL = SizedBox(height: PSOTL);
  static const SizedBox SBH40 = SizedBox(height: PS40);

  // Radius Size
  static const double RSD = 18.0;

  // Padding size
  static const double PSETS = 2.0;
  static const double PSES = 5.0;
  static const double PSS = 10.0;
  static const double PSD = 15.0;
  static const double PSL = 20.0;
  static const double PSEL = 25.0;
  static const double PSOL = 30.0;
  static const double PSOTL = 35.0;
  static const double PS40 = 40.0;

  static const int MESSAGE_INPUT_LENGTH = 250;
  static const double NOTIFICATION_IMAGE_SIZE = 70.0;
  static const double WEB_SCREEN_WIDTH = 1170.0;

  static Size getScreenSize(BuildContext context) =>
      MediaQuery.of(context).size;
}
