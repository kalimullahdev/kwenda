import 'package:flutter/material.dart';
import 'package:kwenda/presentation/theme/light_theme.dart';
import 'package:kwenda/presentation/ui/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kwenda',
      theme: lightTheme(context),
      home: const SplashScreen(),
    );
  }
}
