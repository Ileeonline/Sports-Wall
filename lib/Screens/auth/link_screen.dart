import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'newpassword_screen.dart';

class LinkScreen extends StatefulWidget {
  const LinkScreen({super.key});

  @override
  State<LinkScreen> createState() => _LinkScreenState();
}

class _LinkScreenState extends State<LinkScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (e) => const NewPasswordScreen(),
        ),
      );
    });
    super.initState();
  }

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
              SizedBox(height: 3.h),
              Text(
                'We sent a password reset link to kel...@gmail.com. Click the on the link in your email to reset your password',
                textAlign: TextAlign.center,
                style: GoogleFonts.bebasNeue(
                  fontSize: 12.sp,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 5.h),
              Image.asset('assets/images/reset.png'),
            ],
          ),
        ),
      ),
    );
  }
}
