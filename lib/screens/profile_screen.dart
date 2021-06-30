import 'package:flutter/material.dart';
import 'package:food_ordering_app/classes/constant.dart';
import 'package:food_ordering_app/widgets/widget.dart';

class ProfileScreen extends StatelessWidget {
  //static const routeName
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constant.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "My profile",
              style: TextStyle(fontSize: 22.0),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Personal details",
                  style: TextStyle(fontSize: 12.0),
                ),
                Text(
                  "change",
                  style:
                      TextStyle(fontSize: 10.0, color: Constant.primaryColor),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(32.0),
                    child: Container(
                      color: Colors.white,
                      height: mediaQuery.height * 0.17,
                      width: mediaQuery.width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                height: mediaQuery.height * 0.09,
                                width: mediaQuery.width * 0.15,
                                child: Image.asset(
                                  "assets/images/person.png",
                                  fit: BoxFit.fill,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 4, left: 16, right: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "John Ensonberg",
                                        style: TextStyle(fontSize: 14.0),
                                      ),
                                      const SizedBox(
                                        width: 50,
                                      ),
                                      Icon(Icons.edit_outlined)
                                    ],
                                  ),
                                  Text(
                                    "edirinmuogho@gmail.com",
                                    style: TextStyle(
                                        fontSize: 10.0, color: Colors.grey),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Container(
                                      width: mediaQuery.width * 0.5,
                                      child: Text(
                                        "No 15 uti street off ovie palace road effurun delta state",
                                        maxLines: 3,
                                        style: TextStyle(
                                            fontSize: 10.0, color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: ProfileButton(
                      height: mediaQuery.height * 0.07,
                      width: mediaQuery.width,
                      title: "Orders",
                    ),
                  ),
                  ProfileButton(
                    height: mediaQuery.height * 0.07,
                    width: mediaQuery.width,
                    title: "Pending Reviews",
                  ),
                  ProfileButton(
                    height: mediaQuery.height * 0.07,
                    width: mediaQuery.width,
                    title: "Faq",
                  ),
                  ProfileButton(
                    height: mediaQuery.height * 0.07,
                    width: mediaQuery.width,
                    title: "Help",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: TextButton(
                      onPressed: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Container(
                          color: Constant.primaryColor,
                          height: mediaQuery.height * 0.08,
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              "Update",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
