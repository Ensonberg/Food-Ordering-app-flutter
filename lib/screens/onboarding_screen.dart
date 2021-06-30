import 'package:flutter/material.dart';
import 'package:food_ordering_app/classes/constant.dart';
import 'package:food_ordering_app/screens/screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var color = Color(0xffFF4B3A);
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.zero,
          margin: EdgeInsets.zero,
          width: media.width,
          height: media.height,

          decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  "assets/images/splash.png",
                ),
              )),
          child: Column(
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(16),
                child: MaterialButton(
                  elevation: 8.0,
                  onPressed: () {
                    Navigator.of(context).pushNamed(LoginScreen.routeName);
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Container(
                      color: Constant.primaryColor,
                      height: media.height * 0.08,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.only(left: 36.0, top: 70),
          //       child: Container(
          //         height: 73,
          //         width: 73,
          //         child: CircleAvatar(
          //           backgroundColor: Colors.white,
          //           child: Image(
          //             image: AssetImage("assets/images/small.png"),
          //             height: 100,
          //             width: 100,
          //           ),
          //         ),
          //       ),
          //     ),
          //     const SizedBox(
          //       height: 10,
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.only(left: 36.0),
          //       child: Text(
          //         "Food for\nEveryone",
          //         style: TextStyle(fontSize: 50.0, color: Colors.white),
          //       ),
          //     ),
          //     const SizedBox(
          //       height: 10.0,
          //     ),
          //     Container(
          //       height: media.height * 0.6,
          //       width: media.width,
          //       child: Stack(
          //         children: [
          //           Positioned(
          //             right: 0,
          //             child: Image.asset("assets/images/toyface1.png",
          //                 height: media.height * 0.5,
          //                 width: media.width * 0.7,
          //                 fit: BoxFit.fill),
          //           ),
          //           Positioned(
          //             left: 0,
          //             child: Image.asset(
          //               "assets/images/toyface2.png",
          //               height: media.height * 0.5,
          //               width: media.width * 0.7,
          //               fit: BoxFit.fill,
          //             ),
          //           ),
          //           Positioned(
          //               bottom: 0,
          //               left: 0,
          //               right: 0,
          //               child: MaterialButton(
          //                 onPressed: () {
          //                   Navigator.of(context)
          //                       .pushNamed(LoginScreen.routeName);
          //                 },
          //                 child: Padding(
          //                   padding: const EdgeInsets.all(8.0),
          //                   child: ClipRRect(
          //                     borderRadius: BorderRadius.circular(16.0),
          //                     child: Container(
          //                       color: Colors.white,
          //                       height: media.height * 0.08,
          //                       width: media.width,
          //                       child: Center(
          //                         child: Text(
          //                           "Get Started",
          //                           style: TextStyle(color: color, fontSize: 15),
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               )),
          //           Positioned(
          //             left: 0,
          //             right: 0,
          //             bottom: 70,
          //             child: Container(
          //               height: media.height * 0.3,
          //               width: media.width,
          //               decoration: BoxDecoration(
          //                 color: color,
          //                 gradient: LinearGradient(
          //                   begin: Alignment(10.9, 3.0),
          //                   end: Alignment(0.9, 0.0),
          //                   colors: [Color(0xffFF470B), Colors.black12],
          //                 ),
          //               ),
          //             ),
          //           )
          //         ],
          //       ),
          //     )
          //   ],
          // ),
        ),
      ),
    );
  }
}
