import 'package:flutter/material.dart';
import 'package:food_ordering_app/classes/constant.dart';
import 'package:food_ordering_app/widgets/widget.dart';

class HomeScreen extends StatefulWidget {
  static const route_name = "/home_screen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
          color: Constant.backgroundColor,
          borderRadius: BorderRadius.circular(isDrawerOpen ? 16.0 : 0)),
      child: DefaultTabController(
        length: 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32.0),
          child: Container(
            height: media.height,
            width: media.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      isDrawerOpen
                          ? IconButton(
                              icon: Icon(Icons.arrow_back_ios),
                              onPressed: () {
                                setState(() {
                                  xOffset = 0;
                                  yOffset = 0;
                                  scaleFactor = 1;
                                  isDrawerOpen = false;
                                });
                              })
                          : IconButton(
                              icon: Icon(
                                Icons.menu,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  xOffset = media.height * 0.3;
                                  yOffset = media.height * 0.2;
                                  scaleFactor = 0.64;
                                  isDrawerOpen = true;
                                });
                              }),
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    "Delicious\nfood for you",
                    style: TextStyle(fontSize: 34),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 32.0, right: 32.0, top: 16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(26.0),
                    child: Container(
                      height: media.height * 0.08,
                      width: media.width,
                      color: Color(0xffEFEEEE),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.search),
                              const SizedBox(
                                width: 10,
                              ),
                              Text("Search")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                TabBar(tabs: [
                  Tab(
                    text: "Foods",
                  ),
                  Tab(
                    text: "Drinks",
                  ),
                  Tab(
                    text: "Snacks",
                  ),
                  Tab(
                    text: "Sauce",
                  ),
                ]),
                Expanded(
                    child: TabBarView(
                  children: [
                    FoodList(),
                    DrinkList(),
                    SnackList(),
                    SauceList(),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
