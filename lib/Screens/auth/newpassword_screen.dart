import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../components/my_button2.dart';
import '../../components/my_textfield.dart';
import 'login_screen.dart';
import 'proceedtologin_screen.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

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
                'Forgot your password?',
                style: GoogleFonts.bebasNeue(
                    fontSize: 24.sp,
                    color: Theme.of(context).colorScheme.tertiary),
              ),
              SizedBox(height: 2.h),
              Text(
                'Enter your email address to recover',
                style: GoogleFonts.bebasNeue(
                  fontSize: 12.sp,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 4.h),
              MyTextField(
                labelTxt: "Enter your password",
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 4.h),
              MyTextField(
                labelTxt: "Confirm your password",
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 3.h),
              MyButton2(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (e) => const ProceedToLoginScreen()),
                  );
                },
                btnTxt: 'Reset password',
              ),
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Remember your password?",
                    style: TextStyle(
                        fontSize: 10.sp,
                        color: Theme.of(context).colorScheme.tertiary),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (e) => const LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'SignIn',
                      style: TextStyle(
                          fontSize: 10.sp,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
