import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

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
                'assets/images/onboarding2.png',
                height: 30.h,
                width: 60.w,
              ),
              SizedBox(height: 2.h),
              Text(
                'Challenge the bookmarkers',
                style: GoogleFonts.bebasNeue(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                'A level playing field means a level playing field. We use the analysis of thousands of data points to gain a powerful advantage over the bookmakers',
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
