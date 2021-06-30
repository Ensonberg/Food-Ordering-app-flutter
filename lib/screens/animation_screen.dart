import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/home_screen.dart';
import 'package:food_ordering_app/screens/screen.dart';

class AnimationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}
