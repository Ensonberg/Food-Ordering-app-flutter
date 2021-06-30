import 'package:flutter/material.dart';
import 'package:food_ordering_app/classes/constant.dart';
import 'package:food_ordering_app/screens/favorite_screen.dart';
import 'package:food_ordering_app/screens/profile_screen.dart';
import 'package:food_ordering_app/screens/screen.dart';

class LandingPage extends StatefulWidget {
  static const routeName = "/landing_page";
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    AnimationScreen(),
    FavoriteScreen(),
    ProfileScreen(),
    HistoryScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: _children[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Constant.primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: ""),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
