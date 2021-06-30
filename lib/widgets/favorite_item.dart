import 'package:flutter/material.dart';
import 'package:food_ordering_app/classes/constant.dart';

class FavoriteItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey("1"),
      background: Container(
        child: CircleAvatar(
          backgroundColor: Constant.primaryColor,
          radius: 25,
          child: Icon(
            Icons.delete,
            color: Colors.white,
            size: 20,
          ),
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20.0),
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      ),
      direction: DismissDirection.endToStart,
      child: Padding(
        padding: const EdgeInsets.only(top: 16, right: 32, left: 32),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Container(
            color: Colors.white,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/food.png",
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Veggie tomato mix"),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "#1,900",
                              style: TextStyle(color: Constant.primaryColor),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
