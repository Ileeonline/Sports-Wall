// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../models/tabs.dart';

class LiveScoreTabs extends StatefulWidget {
  final Tabs tabs;
  void Function()? onTap;
  LiveScoreTabs({
    super.key,
    required this.tabs,
    required this.onTap,
  });

  @override
  State<LiveScoreTabs> createState() => _LiveScoreTabsState();
}

class _LiveScoreTabsState extends State<LiveScoreTabs> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 6.h,
        width: 30.w,
        margin: EdgeInsets.only(right: 1.5.w),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(18.sp),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(widget.tabs.tabIcon),
            Text(
              widget.tabs.tabName,
              style: TextStyle(
                fontSize: 12.sp,
                color: Theme.of(context).colorScheme.tertiary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
