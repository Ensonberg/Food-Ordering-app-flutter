import 'package:flutter/material.dart';
import 'package:food_ordering_app/classes/constant.dart';

class CheckOutScreen extends StatefulWidget {
  static const routeName = "/check_out_screen";

  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  var _value = 1;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constant.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Checkout"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 32, right: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "Payment",
              style: TextStyle(fontSize: 28.0),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Payment method",
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                color: Colors.white,
                height: media.height * 0.23,
                width: media.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Radio(
                              activeColor: Constant.primaryColor,
                              value: _value,
                              groupValue: 1,
                              onChanged: (value) {
                                setState(() {
                                  _value = 0;
                                  if (_value == 0) {
                                    _value = 1;
                                  } else {
                                    _value = 0;
                                  }
                                });
                              }),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Color(0xffF47B0A),
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Icon(
                              Icons.credit_card_outlined,
                              color: Colors.white,
                              size: 14,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Card"),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 32.0, top: 6.0, right: 32.0),
                      child: Divider(
                        color: Color(0xff000000),
                        height: 10,
                      ),
                    ),
                    Row(
                      children: [
                        Radio(
                            activeColor: Constant.primaryColor,
                            value: 0,
                            groupValue: 1,
                            onChanged: (value) {
                              setState(() {
                                _value = 0;
                                if (_value == 0) {
                                  _value = 1;
                                } else {
                                  _value = 0;
                                }
                              });
                            }),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Color(0xffEB4796),
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Icon(
                            Icons.account_balance_rounded,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Card"),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Delivery Method"),
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Container(
                  color: Colors.white,
                  height: media.height * 0.19,
                  width: media.width,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Radio(
                              activeColor: Constant.primaryColor,
                              value: _value,
                              groupValue: 1,
                              onChanged: (value) {
                                setState(() {
                                  _value = 0;
                                  if (_value == 0) {
                                    _value = 1;
                                  } else {
                                    _value = 0;
                                  }
                                });
                              }),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Door Delivey"),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 36.0, top: 6.0, right: 32.0),
                        child: Divider(
                          color: Color(0xff000000),
                          height: 5,
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                              activeColor: Constant.primaryColor,
                              value: 0,
                              groupValue: 1,
                              onChanged: (value) {
                                setState(() {
                                  _value = 0;
                                  if (_value == 0) {
                                    _value = 1;
                                  } else {
                                    _value = 0;
                                  }
                                });
                              }),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Pick up"),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total"),
                Text(
                  "2300",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              elevation: 8.0,
              onPressed: () {
                showDialog(context: context, builder: (ctx) => PaymentDialog());
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Container(
                  color: Constant.primaryColor,
                  height: media.height * 0.08,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Proceed to payment",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PaymentDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0)), //this right here
      child: Container(
        height: 260.0,
        width: 300.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Please note",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivery to Mainland",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Text(
                    "N1000 - N2000",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 32),
                    child: Divider(
                      height: 1,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivery to Island",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Text(
                    "N2000 - N3000",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "cancel",
                    style: TextStyle(color: Colors.grey),
                  ),
                  MaterialButton(
                      child: Container(
                        height: 50,
                        width: 130,
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
                      onPressed: () => Navigator.of(context).pop())
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
