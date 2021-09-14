import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smalltest/Screens/floating/category/category.dart';
import 'package:smalltest/Screens/floating/createcard/createcard.dart';
import 'package:smalltest/Screens/floating/profile/profile.dart';
import 'package:smalltest/Screens/floating/team/team.dart';
import '../../constants.dart';

class Floating extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Floating> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    CreateCard(),
    CateGory(),
    TeamScreen(),
    Profile(),
  ];

  void onTappBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _children[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: PinkLColor,
              iconSize: 30,
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: PinkColor,
              color: PinkColor,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.add_circle,
                  text: 'Create',
                ),
                GButton(
                  icon: Icons.groups,
                  text: 'Team',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: onTappBar,
            ),
          ),
        ),
      ),
    );
  }
}
