import 'package:flutter/cupertino.dart';
import 'package:food_ordering_app/models/item.dart';

class Items with ChangeNotifier {
  List<Item> mlist = [
    Item(
        title: "Veggie Tomato mix",
        id: "1",
        price: 2000,
        itemType: ItemType.food,
        imageUrl: "assets/images/food.png"),
    Item(
        title: "Veggie Tomato mix",
        id: "2",
        price: 2000,
        itemType: ItemType.food,
        imageUrl: "assets/images/food.png"),
    Item(
        title: "Veggie Tomato mix",
        id: "3",
        price: 2000,
        itemType: ItemType.food,
        imageUrl: "assets/images/food.png"),
    Item(
        title: "Lemon Juice",
        id: "4",
        price: 2000,
        itemType: ItemType.drink,
        imageUrl: "assets/images/lemon_juice.png"),
    Item(
        title: "Lemon Juice",
        id: "5",
        price: 2000,
        itemType: ItemType.drink,
        imageUrl: "assets/images/lemon_juice.png"),
    Item(
        title: "Lemon Juice",
        id: "6",
        price: 2000,
        itemType: ItemType.drink,
        imageUrl: "assets/images/lemon_juice.png"),
    Item(
        title: "Lemon Juice",
        id: "7",
        price: 2000,
        itemType: ItemType.drink,
        imageUrl: "assets/images/lemon_juice.png"),
    Item(
        title: "Tomato Sauce",
        id: "8",
        price: 3000,
        itemType: ItemType.sacuce,
        imageUrl: "assets/images/sauce.png"),
    Item(
        title: "Tomato Sauce",
        id: "9",
        price: 3000,
        itemType: ItemType.sacuce,
        imageUrl: "assets/images/sauce.png"),
    Item(
        title: "Tomato Sauce",
        id: "10",
        price: 3000,
        itemType: ItemType.sacuce,
        imageUrl: "assets/images/sauce.png"),
    Item(
        title: "French Fries Potatos",
        id: "11",
        price: 3000,
        itemType: ItemType.snacks,
        imageUrl: "assets/images/french_fries_potato.png"),
    Item(
        title: "French Fries Potatos",
        id: "12",
        price: 3000,
        itemType: ItemType.snacks,
        imageUrl: "assets/images/french_fries_potato.png"),
    Item(
        title: "French Fries Potatos",
        id: "13",
        price: 3000,
        itemType: ItemType.snacks,
        imageUrl: "assets/images/french_fries_potato.png"),
  ];

  List<Item> get foodItems {
    return mlist.where((item) => item.itemType == ItemType.food).toList();
  }

  List<Item> get drinkItems {
    return mlist.where((item) => item.itemType == ItemType.drink).toList();
  }

  List<Item> get snackItems {
    return mlist.where((item) => item.itemType == ItemType.snacks).toList();
  }

  List<Item> get sauceItems {
    return mlist.where((item) => item.itemType == ItemType.sacuce).toList();
  }

  Item findItemById(String itemId) {
    return mlist.firstWhere((item) => item.id == itemId);
  }
}
