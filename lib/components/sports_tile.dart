// ignore_for_file: prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:sports_news/components/league_tile.dart';
import 'package:sports_news/models/league.dart';
import 'package:sports_news/models/sports.dart';

class SportsTile extends StatefulWidget {
  final Sports sports;
  const SportsTile({
    super.key,
    required this.sports,
  });

  @override
  State<SportsTile> createState() => _SportsTileState();
}

class _SportsTileState extends State<SportsTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.h),
      child: ExpansionTile(
        expansionAnimationStyle: AnimationStyle(
          duration: const Duration(milliseconds: 600),
        ),
        initiallyExpanded: false,
        backgroundColor: const Color(0xff191F3A),
        collapsedBackgroundColor: const Color(0xff191F3A),
        collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.sp),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.sp),
        ),
        leading: Image.asset(widget.sports.sportIcon),
        title: Text(
          widget.sports.name,
          style: GoogleFonts.bebasNeue(
            fontSize: 12.sp,
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        collapsedIconColor: Theme.of(context).colorScheme.tertiary,
        iconColor: Theme.of(context).colorScheme.tertiary,
        children: [
          Padding(
            padding: EdgeInsets.all(8.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'All',
                  style: GoogleFonts.bebasNeue(
                    fontSize: 12.sp,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
                LeagueTile(
                  sportsLeague: ,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
