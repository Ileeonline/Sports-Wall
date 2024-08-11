import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import '../models/league.dart';

class LeagueTile extends StatelessWidget {
  final League sportsLeague;
  const LeagueTile({super.key, required this.sportsLeague});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: leagueList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            sportsLeague.teamName,
            style: GoogleFonts.bebasNeue(
              fontSize: 12.sp,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          leading: Image.asset(
            sportsLeague.teamFlag,
          ),
        );
      },
    );
  }
}
