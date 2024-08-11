import 'package:flutter/material.dart';
import 'package:sports_news/Screens/page_view_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1200), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (e) => const PageViewScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0C1023),
      body: Center(
        child: Image.asset("assets/images/solver.png"),
      ),
    );
  }
}
