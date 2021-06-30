import 'package:flutter/material.dart';
import 'package:food_ordering_app/models/item.dart';
import 'package:food_ordering_app/models/items.dart';
import 'package:food_ordering_app/widgets/Item_model.dart';
import 'package:provider/provider.dart';

class FoodList extends StatelessWidget {
  final ItemType itemType;

  const FoodList({Key key, this.itemType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<Items>(context, listen: true).foodItems;

    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (ctx, index) {
          return ChangeNotifierProvider.value(
            value: products[index],
            child: Padding(
              padding: const EdgeInsets.only(top: 32, left: 8.0),
              child: ItemModel(),
            ),
          );
        });
  }
}
