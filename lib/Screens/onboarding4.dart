import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class OnBoarding4 extends StatelessWidget {
  const OnBoarding4({super.key});

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
                'assets/images/onboarding4.png',
                height: 30.h,
                width: 60.w,
              ),
              SizedBox(height: 2.h),
              Text(
                'Become a winning Bettor',
                style: GoogleFonts.bebasNeue(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                'Solverbet offers smart strategies that allow you to take advantage of market anomalies and predict outcomes better than ever before',
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
