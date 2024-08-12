import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.sp),
        color: Theme.of(context).colorScheme.tertiary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.sp),
              topRight: Radius.circular(12.sp),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 5.w, top: 2.h),
              child: Image.asset(
                'assets/images/news.png',
                // Make image stretch across the container width
                fit: BoxFit
                    .cover, // Ensures the image covers the area without distortion
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Calafiori to Arsenal, Here we go\nconfirmed",
                  style: TextStyle(
                    fontSize: 8.sp,
                    color: Theme.of(context).colorScheme.background,
                  ),
                ),
                SizedBox(height: 4.sp), // Adds space between texts
                Text(
                  'Aug 4, 2:28 pm',
                  style: TextStyle(
                    fontSize: 8.sp,
                    color: Theme.of(context).colorScheme.background,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
