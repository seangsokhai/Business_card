import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:smalltest/Screens/login/login_screen.dart';
import 'package:smalltest/components/Alreadyhaveacc.dart';
import 'package:smalltest/components/rounded_input_field.dart';
import 'package:smalltest/components/rounded_list.dart';
// import 'package:smalltest/components/rounded_signup_field.dart';
import 'package:smalltest/constants.dart';

import '../../../welcome_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: PinkColor,
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.006,
                      ),
                      Image.asset('assets/images/logo.png',
                          height: size.height * 0.1),

                      // 4%
                      // Text(
                      //   "Business Card Maker",
                      //   style: TextStyle(
                      //     fontWeight: FontWeight.bold,
                      //     fontSize: size.width * 0.04,
                      //     color: PinkLColor,
                      //   ),
                      //   textAlign: TextAlign.left,
                      // ),
                      SizedBox(
                        height: size.height * 0.003,
                      ),
                      Container(
                        // height: size.height * 0.04,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: CupertinoSearchTextField(
                          backgroundColor: Colors.grey.shade50,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "All Categories",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: size.width * 0.035),
                          textAlign: TextAlign.start,
                        ),
                      ),

                      // Positioned(
                      //   // bottom: 10,
                      //   // left: 40,
                      //   child: RoundList(
                      //     text: 'Create Card',
                      //     textColor: Colors.black,
                      //     color: PinkColor,
                      //     press: () => () {
                      //       Navigator.of(context).push(MaterialPageRoute(
                      //           builder: (context) => WelcomeScreen()));
                      //     },
                      //   ),
                      // ),
                      // scrollDirection: Axis.vertical,

                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Container(
                          child: FittedBox(
                            child: Material(
                              color: Color(0xFFededed),
                              borderRadius: BorderRadius.circular(24.0),
                              shadowColor: Color(0x802196F3),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      width: 250,
                                      height: 200,
                                      child: ClipRRect(
                                        child: Image(
                                          image: NetworkImage(
                                              "https://blackcatcard.com/images/card-main.png"),
                                          fit: BoxFit.contain,
                                          alignment: Alignment.topLeft,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            "Shop",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: size.width * 0.05),
                                          ),
                                          Text(
                                              "we are glad to serve you warm meal")
                                        ],
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      AlreadyHaveAnAccountCheck(
                        login: false,
                        press: () => () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return LoginScreen(); // return SignUpScreen();
                              },
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
