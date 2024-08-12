import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class LiveScoreTile extends StatelessWidget {
  const LiveScoreTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 1.h),
      padding: EdgeInsets.all(12.sp),
      decoration: BoxDecoration(
        color: const Color(0xff191F3A),
        borderRadius: BorderRadius.circular(12.sp),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 26.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.sp),
              border: Border.all(
                color: const Color(0xffD195FE),
                width: 1.sp,
              ),
            ),
            child: Text(
              'France Ligue 1',
              style: GoogleFonts.bebasNeue(
                fontSize: 12.sp,
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),
          ),
          SizedBox(height: 4.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset('assets/icons/psg.png'),
                  SizedBox(height: 1.h),
                  Text(
                    'PSG',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 12.sp,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '2-1',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 20.sp,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    "48''",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 10.sp,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/icons/om.png'),
                  SizedBox(height: 1.h),
                  Text(
                    'OM',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 12.sp,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
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
