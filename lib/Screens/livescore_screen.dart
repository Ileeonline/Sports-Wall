// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:sports_news/components/livescore_tile.dart';

import '../models/tabs.dart';

class LiveScoreScreen extends StatefulWidget {
  const LiveScoreScreen({
    super.key,
  });

  @override
  State<LiveScoreScreen> createState() => _LiveScoreScreenState();
}

class _LiveScoreScreenState extends State<LiveScoreScreen> {
  List<String> tabsList = [
    'Soccer',
    'Basketball',
    'Tennis',
    'Hockey',
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Tabs> myTabs = Tabs.tabsList;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: EdgeInsets.only(top: 8.h, left: 6.w, right: 6.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Live Score',
              style: GoogleFonts.bebasNeue(
                fontSize: 20.sp,
                color: Theme.of(context).colorScheme.tertiary,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2.h),
            SizedBox(
              width: double.infinity,
              height: 5.h,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: tabsList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: currentIndex == index
                          ? AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              margin: EdgeInsets.only(
                                left: 1.5.w,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.sp),
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              child: Center(
                                child: Text(
                                  tabsList[index],
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: currentIndex == index
                                        ? FontWeight.w900
                                        : FontWeight.normal,
                                  ),
                                ),
                              ),
                            )
                          : AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              margin: const EdgeInsets.only(
                                left: 6,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.sp),
                                  border: Border.all(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  )),
                              child: Center(
                                child: Text(
                                  tabsList[index],
                                  style: GoogleFonts.bebasNeue(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),
                            ),
                    );
                  }),
            ),
            SizedBox(height: 2.h),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: const [
                  LiveScoreTile(),
                  LiveScoreTile(),
                  LiveScoreTile(),
                  LiveScoreTile(),
                  LiveScoreTile(),
                  LiveScoreTile(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
