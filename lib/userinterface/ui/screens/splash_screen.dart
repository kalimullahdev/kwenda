import 'package:flutter/material.dart';
import 'package:kwenda/userinterface/ui/screens/welcome_screen.dart';
import 'package:kwenda/userinterface/utill/color_resources.dart';
import 'package:kwenda/userinterface/utill/dimensions.dart';
import 'package:kwenda/userinterface/utill/images.dart';
import 'package:kwenda/userinterface/utill/nav.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 1),
      () => Nav.push(context, const WelcomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cr.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              Img.circle_logo_small,
              width: 150,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  Img.flag,
                  width: 100,
                ),
                Di.SBHEL,
                Image.asset(
                  Img.developed,
                  width: 125,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// flag.gif