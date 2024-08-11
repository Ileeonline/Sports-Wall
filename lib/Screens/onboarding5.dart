import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class OnBoarding5 extends StatelessWidget {
  const OnBoarding5({super.key});

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
                'assets/images/onboarding5.png',
                height: 30.h,
                width: 60.w,
              ),
              SizedBox(height: 2.h),
              Text(
                'No Limitations',
                style: GoogleFonts.bebasNeue(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                'Get crucial information to increase the accuracy of your bets. And choose the combination that suits you best. No Limits, just your Imaginations.',
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
