import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:sports_news/components/my_textfield.dart';
import 'package:sports_news/components/news_tile.dart';

class SportNewsScreen extends StatefulWidget {
  const SportNewsScreen({super.key});

  @override
  State<SportNewsScreen> createState() => _SportNewsScreenState();
}

class _SportNewsScreenState extends State<SportNewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: EdgeInsets.only(top: 8.h, left: 6.w, right: 6.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sport News',
                style: GoogleFonts.bebasNeue(
                  fontSize: 20.sp,
                  color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2.h),
              MyTextField(
                prefixIcon: const Icon(CupertinoIcons.search),
                labelTxt: "Search News",
                obscureText: false,
                keyboardType: TextInputType.multiline,
              ),
              SizedBox(height: 2.h),
              Text(
                'Popular News',
                style: GoogleFonts.bebasNeue(
                  fontSize: 14.sp,
                  color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2.h),
              SizedBox(
                height: 22.h,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const NewsTile();
                  },
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                'Latest News',
                style: GoogleFonts.bebasNeue(
                  fontSize: 14.sp,
                  color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2.h),
              SizedBox(
                height: 22.h,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const NewsTile();
                  },
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                'Trending News',
                style: GoogleFonts.bebasNeue(
                  fontSize: 14.sp,
                  color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2.h),
              SizedBox(
                height: 22.h,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const NewsTile();
                  },
                ),
              ),
              SizedBox(height: 1.h),
            ],
          ),
        ),
      ),
    );
  }
}
