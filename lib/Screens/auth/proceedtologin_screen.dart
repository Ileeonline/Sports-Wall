import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:sports_news/Screens/auth/login_screen.dart';
import 'package:sports_news/components/my_button2.dart';

class ProceedToLoginScreen extends StatelessWidget {
  const ProceedToLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: EdgeInsets.only(
          top: 8.h,
          left: 6.w,
          right: 6.w,
        ),
        child: Center(
          child: Column(
            children: [
              Text(
                'Reset password',
                style: GoogleFonts.bebasNeue(
                    fontSize: 24.sp,
                    color: Theme.of(context).colorScheme.tertiary),
              ),
              SizedBox(height: 3.h),
              Text(
                'Congratulations!! you have successfuly reset your password',
                textAlign: TextAlign.center,
                style: GoogleFonts.bebasNeue(
                  fontSize: 12.sp,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 5.h),
              Image.asset('assets/images/reset.png'),
              SizedBox(height: 5.h),
              MyButton2(
                btnTxt: "Proceed to login",
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (e) => const LoginScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
