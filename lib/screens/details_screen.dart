import 'package:flutter/material.dart';
import 'package:food_ordering_app/classes/constant.dart';
import 'package:food_ordering_app/models/items.dart';
import 'package:food_ordering_app/screens/cart_screen.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  static const routeName = "/detailsScreen";
  @override
  Widget build(BuildContext context) {
    final itemId = ModalRoute.of(context).settings.arguments as String;
    final loadedItem =
        Provider.of<Items>(context, listen: false).findItemById(itemId);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.favorite_border),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 241.2,
              width: 241.2,
              child: Column(
                children: [
                  Image.asset(
                    loadedItem.imageUrl,
                    height: 241.2,
                    width: 241.2,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              loadedItem.title,
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              loadedItem.price.toString(),
              style: TextStyle(fontSize: 17, color: Constant.primaryColor),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 36),
            child: Text(
              "Delivering Info",
              style: TextStyle(fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, top: 4, right: 32),
            child: Text(
              "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",
              style: TextStyle(
                  fontSize: 10, color: Colors.grey, letterSpacing: 2.0),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 36),
            child: Text(
              "Return Policy",
              style: TextStyle(fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, top: 4, right: 32),
            child: Text(
              "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  letterSpacing: 3.0,
                  wordSpacing: 2),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 32, left: 32),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Container(
                  color: Constant.primaryColor,
                  height: 50,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Add to cart",
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
