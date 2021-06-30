import 'package:flutter/material.dart';
import 'package:food_ordering_app/classes/constant.dart';
import 'package:food_ordering_app/models/item.dart';
import 'package:food_ordering_app/screens/details_screen.dart';
import 'package:provider/provider.dart';

class ItemModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final item = Provider.of<Item>(context, listen: true);
    return InkWell(
      onTap: () => Navigator.of(context)
          .pushNamed(DetailsScreen.routeName, arguments: item.id),
      child: Container(
        height: 220,
        width: 220,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0)),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Container(
                      color: Colors.white,
                      height: 250,
                      width: 200,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 150,
                          ),
                          Center(
                            child: Text(
                              item.title,
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Text(
                              "\$${item.price}",
                              style: TextStyle(
                                  fontSize: 15, color: Constant.primaryColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              width: 200,
              child: Column(
                children: [
                  Image.asset(item.imageUrl, height: 150, width: 200),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
