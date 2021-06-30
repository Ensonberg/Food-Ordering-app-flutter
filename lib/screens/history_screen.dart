import 'package:flutter/material.dart';
import 'package:food_ordering_app/classes/constant.dart';

class HistoryScreen extends StatelessWidget {
  static const routeName = "/history_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("History"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Center(
            child: ImageIcon(
              AssetImage("assets/images/history.png"),
              color: Colors.grey,
              size: 100,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "No history yet",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 64, right: 64),
            child: Center(
              child: Text(
                "Hit the orange button down below to Create an order",
                maxLines: 3,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: MaterialButton(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Constant.primaryColor,
                      borderRadius: BorderRadius.circular(32.0)),
                  child: Center(
                    child: Text(
                      "Proceed",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                onPressed: () => Navigator.of(context).pop()),
          )
        ],
      ),
    );
  }
}
