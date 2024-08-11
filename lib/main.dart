import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sports_news/themes/light_mode.dart';

import 'Screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          home: const SplashScreen(),
          debugShowCheckedModeBanner: false,
          theme: lightmode,
        );
      },
    );
  }
}
