import 'package:flutter/material.dart';
import 'package:food_ordering_app/classes/constant.dart';
import 'package:food_ordering_app/screens/check_out_screen.dart';
import 'package:food_ordering_app/widgets/favorite_item.dart';

class FavoriteScreen extends StatelessWidget {
  static const routeName = "/cart_screen";
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constant.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Favorite"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(child: Image.asset("assets/images/swipe.png")),
          FavoriteItem(),
          FavoriteItem(),
          FavoriteItem(),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: MaterialButton(
              elevation: 8.0,
              onPressed: () {
                Navigator.of(context).pushNamed(CheckOutScreen.routeName);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Container(
                  color: Constant.primaryColor,
                  height: media.height * 0.08,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Complete Order",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
