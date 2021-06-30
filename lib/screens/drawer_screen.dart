import 'package:flutter/material.dart';
import 'package:food_ordering_app/classes/constant.dart';
import 'package:food_ordering_app/widgets/custom_list_tile.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      height: mediaQuery.height,
      width: mediaQuery.width,
      decoration: BoxDecoration(color: Constant.primaryColor, boxShadow: [
        BoxShadow(
          color: Constant.backgroundColor,
        ),
        BoxShadow(
          color: Constant.backgroundColor,
        )
      ]),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            const SizedBox(
              height: 140,
            ),
            CustomListTile(
              icon: Icons.person_outline_outlined,
              title: "Profile",
            ),
            CustomListTile(
                icon: Icons.add_shopping_cart_rounded, title: "Orders"),
            CustomListTile(
                icon: Icons.local_offer_outlined, title: "Offers and promo"),
            CustomListTile(
              icon: Icons.sticky_note_2_outlined,
              title: "Privacy and policy",
            ),
            CustomListTile(
              icon: Icons.security_outlined,
              title: "Security",
            ),
            SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "Sign-out ",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
