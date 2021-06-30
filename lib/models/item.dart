import 'package:flutter/cupertino.dart';

enum ItemType { food, drink, snacks, sacuce }

class Item with ChangeNotifier {
  final String title;
  final String id;
  final String description;
  final double price;
  final String imageUrl;
  final ItemType itemType;

  Item(
      {@required this.title,
      @required this.id,
      this.description,
      @required this.price,
      @required this.itemType,
      this.imageUrl});
}
