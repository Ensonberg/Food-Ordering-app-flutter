import 'package:flutter/material.dart';
import 'package:food_ordering_app/classes/constant.dart';
import 'package:food_ordering_app/models/items.dart';
import 'package:food_ordering_app/screens/check_out_screen.dart';
import 'package:food_ordering_app/screens/screen.dart';
import 'package:provider/provider.dart';

import 'screens/details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (ctx) => Items())],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            tabBarTheme: TabBarTheme(
                labelColor: Constant.primaryColor,
                unselectedLabelColor: Colors.grey),
            primarySwatch: Colors.orange,
            fontFamily: "Aclonica"),
        home: OnboardingScreen(),
        routes: {
          LoginScreen.routeName: (ctx) => LoginScreen(),
          HomeScreen.route_name: (ctx) => HomeScreen(),
          LandingPage.routeName: (ctx) => LandingPage(),
          DetailsScreen.routeName: (ctx) => DetailsScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          CheckOutScreen.routeName: (ctx) => CheckOutScreen(),
          HistoryScreen.routeName: (ctx) => HistoryScreen(),
        },
      ),
    );
  }
}
