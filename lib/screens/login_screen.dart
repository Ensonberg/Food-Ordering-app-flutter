import 'package:flutter/material.dart';
import 'package:food_ordering_app/widgets/login_widget.dart';
import 'package:food_ordering_app/widgets/signup_widget.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "/loginScreen";
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Card(
                shadowColor: Color(0xffBCBABA),
                elevation: 0,
                color: Colors.black12,
                margin: EdgeInsets.zero,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)),
                  child: Container(
                    color: Colors.white,
                    height: media.height * 0.4,
                    width: media.width,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Image.asset(
                          "assets/images/icon_circle.png",
                          height: media.height * 0.2,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TabBar(
                            tabs: [
                              Tab(
                                text: "Login",
                              ),
                              Tab(
                                text: "SignUp",
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [LoginPage(), SignUpPage()],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
