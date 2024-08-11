import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:sports_news/components/subscription_tile.dart';

import '../components/my_button2.dart';
import 'auth/login_screen.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: EdgeInsets.only(top: 8.h, left: 6.w, right: 6.w),
        child: Center(
          child: Column(
            children: [
              Text(
                'Subscription',
                style: GoogleFonts.bebasNeue(
                    fontSize: 24.sp,
                    color: Theme.of(context).colorScheme.tertiary),
              ),
              SizedBox(height: 2.h),
              const SubscriptionTile(),
              SizedBox(height: 3.h),
              MyButton2(
                btnTxt: 'Pay Now',
                onTap: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
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
                        color: Theme.of(context).colorScheme.secondary,
                      ),
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
