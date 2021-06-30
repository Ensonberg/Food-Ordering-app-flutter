import 'package:flutter/material.dart';
import 'package:food_ordering_app/classes/constant.dart';
import 'package:food_ordering_app/screens/landing_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          TextFormField(
            maxLines: 1,
            decoration: InputDecoration(
              labelText: "Email Address",
            ),
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            obscureText: true,
            maxLines: 1,
            decoration: InputDecoration(
              labelText: "Password",
            ),
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.visiblePassword,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Forget Password?",
            style: TextStyle(
              color: Color(0xffFF470B),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pushNamed(LandingPage.routeName);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Container(
                  color: Constant.primaryColor,
                  height: 60,
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
