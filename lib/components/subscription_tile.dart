import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class SubscriptionTile extends StatelessWidget {
  const SubscriptionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Monthly Subscription",
                style: GoogleFonts.bebasNeue(
                    fontSize: 12.sp,
                    color: Theme.of(context).colorScheme.background),
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Initial payment",
                style: GoogleFonts.bebasNeue(
                    fontSize: 10.sp,
                    color: Theme.of(context).colorScheme.background),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1.0 EUR",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 10.sp, color: Colors.grey),
                  ),
                  Text(
                    "For 3 days",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 10.sp,
                        color: Theme.of(context).colorScheme.background),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Then",
                style: GoogleFonts.bebasNeue(
                    fontSize: 10.sp,
                    color: Theme.of(context).colorScheme.background),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "24.90 EUR",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 10.sp, color: Colors.grey),
                  ),
                  Text(
                    "Every Month",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 10.sp,
                        color: Theme.of(context).colorScheme.background),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 2.h),
          const Divider(),
          SizedBox(height: 2.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Subtotal",
                style: GoogleFonts.bebasNeue(
                    fontSize: 12.sp,
                    color: Theme.of(context).colorScheme.background),
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Initial payment",
                style: GoogleFonts.bebasNeue(
                    fontSize: 10.sp,
                    color: Theme.of(context).colorScheme.background),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1.0 EUR",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 10.sp, color: Colors.grey),
                  ),
                  Text(
                    "For 3 days",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 10.sp,
                        color: Theme.of(context).colorScheme.background),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Then",
                style: GoogleFonts.bebasNeue(
                    fontSize: 10.sp,
                    color: Theme.of(context).colorScheme.background),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "24.90 EUR",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 10.sp, color: Colors.grey),
                  ),
                  Text(
                    "Every Month",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 10.sp,
                        color: Theme.of(context).colorScheme.background),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
