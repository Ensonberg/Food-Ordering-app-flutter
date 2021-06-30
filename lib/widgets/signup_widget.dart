import 'package:flutter/material.dart';
import 'package:food_ordering_app/classes/constant.dart';
import 'package:food_ordering_app/screens/screen.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
              labelText: "First Name",
            ),
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
          ),
          TextFormField(
            maxLines: 1,
            decoration: InputDecoration(
              labelText: "Last Name",
            ),
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
          ),
          TextFormField(
            maxLines: 1,
            decoration: InputDecoration(
              labelText: "Email Address",
            ),
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 0,
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
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pushNamed(LandingPage.routeName);
              // Navigator.of(context).pushNamed(LoginScreen.routeName);
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
                      "Sign Up",
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
