import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:sports_news/Screens/auth/login_screen.dart';

import '../../components/my_button2.dart';
import '../../components/my_textfield.dart';
import '../subscription_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: EdgeInsets.only(top: 8.h, left: 6.w, right: 6.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Text(
                      'Register in one click',
                      style: GoogleFonts.bebasNeue(
                          fontSize: 24.sp,
                          color: Theme.of(context).colorScheme.tertiary),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      "Hey! before you begin to explore, let's help you setup your account",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.bebasNeue(
                        fontSize: 12.sp,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    MyTextField(
                      labelTxt: "Enter your username",
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 4.h),
                    MyTextField(
                      labelTxt: "Enter your Email",
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    SizedBox(height: 4.h),
                    MyTextField(
                      labelTxt: 'Enter your full name',
                      obscureText: false,
                      keyboardType: TextInputType.name,
                    ),
                    SizedBox(height: 4.h),
                    MyTextField(
                      labelTxt: 'Enter your password',
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    SizedBox(height: 4.h),
                    MyTextField(
                      labelTxt: 'Confirm your password',
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.h),
              MyButton2(
                btnTxt: 'Proceed',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (e) => const SubscriptionScreen()),
                  );
                },
              ),
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
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
                      'Login',
                      style: TextStyle(
                          fontSize: 10.sp,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
