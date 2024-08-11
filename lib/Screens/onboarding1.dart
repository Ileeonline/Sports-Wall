import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/onboarding1.png',
                height: 30.h,
                width: 60.w,
              ),
              SizedBox(height: 2.h),
              Text(
                'Instant Predictions',
                style: GoogleFonts.bebasNeue(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                'The software is hosted on our servers and allows user to\nenjoy ultra-fast usage speed',
                textAlign: TextAlign.center,
                style: GoogleFonts.bebasNeue(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
