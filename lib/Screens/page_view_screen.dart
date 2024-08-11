import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sports_news/Screens/onboarding1.dart';
import 'package:sports_news/Screens/onboarding2.dart';
import 'package:sports_news/Screens/onboarding3.dart';
import 'package:sports_news/Screens/onboarding4.dart';
import 'package:sports_news/Screens/onboarding5.dart';
import 'package:sports_news/components/my_button.dart';

import 'auth/login_screen.dart';
import 'auth/signup_screen.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: const [
              OnBoarding1(),
              OnBoarding2(),
              OnBoarding3(),
              OnBoarding4(),
              OnBoarding5(),
            ],
          ),
          Container(
            alignment: Alignment(.01.w, .07.h),
            child: SmoothPageIndicator(
              controller: controller,
              count: 5,
              effect: JumpingDotEffect(
                  dotColor: const Color.fromRGBO(35, 17, 71, 1),
                  activeDotColor: Theme.of(context).colorScheme.secondary),
            ),
          ),
          Positioned(
            top: 85.h,
            left: 14.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(
                  btnTxt: 'Login',
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  color: Colors.transparent,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (e) => const LoginScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  width: 5.w,
                ),
                MyButton(
                  color: Theme.of(context).colorScheme.secondary,
                  btnTxt: 'Sign Up',
                  border: Border.all(),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (e) => const SignUpScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
