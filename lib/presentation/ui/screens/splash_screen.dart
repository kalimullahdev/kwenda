import 'package:flutter/material.dart';
import 'package:kwenda/presentation/ui/screens/welcome_screen.dart';
import 'package:kwenda/presentation/utill/color_resources.dart';
import 'package:kwenda/presentation/utill/dimensions.dart';
import 'package:kwenda/presentation/utill/images.dart';
import 'package:kwenda/presentation/utill/nav.dart';

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