import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/onboarding3.png',
                height: 30.h,
                width: 60.w,
              ),
              SizedBox(height: 2.h),
              Text(
                'Maximize your performances',
                style: GoogleFonts.bebasNeue(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                'With an unmatched success rate, Solverbet is the essential tool for all beginners or experienced bettors',
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
