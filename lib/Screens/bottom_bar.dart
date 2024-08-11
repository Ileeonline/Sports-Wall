// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:sports_news/Screens/account_screen.dart';
import 'package:sports_news/Screens/home_screen.dart';
import 'package:sports_news/Screens/livescore_screen.dart';
import 'package:sports_news/Screens/sportnews_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const SportNewsScreen(),
    const LiveScoreScreen(),
    const AccountScreen(),
  ];

  void _ontap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _ontap,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/home.png',
                color: _currentIndex == 0
                    ? Theme.of(context).colorScheme.secondary
                    : Colors.grey,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/news.png',
                color: _currentIndex == 1
                    ? Theme.of(context).colorScheme.secondary
                    : Colors.grey,
              ),
              label: 'News'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/score.png',
                color: _currentIndex == 2
                    ? Theme.of(context).colorScheme.secondary
                    : Colors.grey,
              ),
              label: 'Score'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/profile.png',
                color: _currentIndex == 3
                    ? Theme.of(context).colorScheme.secondary
                    : Colors.grey,
              ),
              label: 'Profile'),
        ],
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Colors.grey,
        backgroundColor: const Color(0xff222232),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
