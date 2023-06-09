import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_startup_starter/view/screens/progress_page.dart';
import 'package:flutter_startup_starter/view/screens/projects_page.dart';
import 'package:flutter_startup_starter/view/screens/option_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'favourite_page.dart';
import 'homepage.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentSelectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    ProgressPage(),
    ProjectsPage(),
    FavouritePage(),
    OptionPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentSelectedIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
            child: GNav(
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.black,
              tabBackgroundColor: Colors.white,
              gap: 8,
              padding: const EdgeInsets.all(16),
              onTabChange: (index) {
                setState(() {
                  _currentSelectedIndex = index;
                });
              },
              tabs: const [
                GButton(
                  icon: CupertinoIcons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: CupertinoIcons.clock,
                  text: 'Progress',
                ),
                GButton(
                  icon: CupertinoIcons.briefcase,
                  text: 'Projects',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Favorites',
                ),
                GButton(
                  icon: CupertinoIcons.settings,
                  text: 'Settings',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
