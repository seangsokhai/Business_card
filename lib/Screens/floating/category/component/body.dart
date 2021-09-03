import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:smalltest/Screens/components/background.dart';

// import 'package:smalltest/Screens/floating/floating.dart';

import 'package:smalltest/Screens/login/login_screen.dart';
import 'package:smalltest/components/Alreadyhaveacc.dart';
// import 'package:smalltest/components/rounded_bottom.dart';
import 'package:smalltest/components/rounded_input_field.dart';
import 'package:smalltest/components/rounded_signup_field.dart';
import 'package:smalltest/constants.dart';

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
                child: Column(
                  children: [
                    Image.asset('assets/images/logo.png',
                        height: size.height * 0.1),
                    // 4%

                    Text(
                      "Business Card Maker",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.03,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Text(
                        "Please login to your account",
                        style: TextStyle(
                          fontSize: size.width * 0.04,
                          color: PinkLColor,
                        ),
                        textAlign: TextAlign.left,
                      ),

                      SizedBox(
                        height: size.height * 0.025,
                      ),
                      Container(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundSignup(
                                hintText: 'First name',
                                onChange: (value) {},
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              RoundSignup(
                                hintText: 'Last name',
                                onChange: (value) {},
                              ),
                            ],
                          ),
                        ),
                      ),
                      RoundInputFeild(
                        icon: Icons.food_bank,
                        hintText: 'Company Name',
                        onChange: (value) {},
                      ),
                      RoundInputFeild(
                        icon: Icons.work,
                        hintText: 'Position',
                        onChange: (value) {},
                      ),
                      RoundInputFeild(
                        icon: Icons.phone,
                        hintText: 'Phone number',
                        onChange: (value) {},
                      ),
                      RoundInputFeild(
                        icon: Icons.email,
                        hintText: 'Email',
                        onChange: (value) {},
                      ),
                      RoundInputFeild(
                        icon: Icons.password,
                        hintText: 'Password',
                        onChange: (value) {},
                      ),
                      RoundInputFeild(
                        icon: Icons.password,
                        hintText: 'Password',
                        onChange: (value) {},
                      ),
                      RoundInputFeild(
                        icon: Icons.password,
                        hintText: 'Password',
                        onChange: (value) {},
                      ),

                      // scrollDirection: Axis.vertical,

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
