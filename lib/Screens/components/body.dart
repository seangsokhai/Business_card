import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:smalltest/Screens/components/background.dart';
import 'package:smalltest/Screens/login/login_screen.dart';
import 'package:smalltest/Screens/signup/signup.dart';
import 'package:smalltest/components/rounded_bottom.dart';
import 'package:smalltest/constants.dart';




class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //this size provide us total heigt and width of our screen
    return Background(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo.png',
              height: size.height * 0.3,
            ),
            SizedBox(
              height: size.height * 0.025,
            ),

            Text(
              "Business Card",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: PinkLColor,
                fontSize: size.width * 0.1,
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              "Maker",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: size.width * 0.1,
                color: PinkLColor,
              ),
              textAlign: TextAlign.left,
            ),
            // Text( '''
            //   Business Card
            //   Maker ''',
            //   style: TextStyle(fontWeight: FontWeight.bold,
            //   fontSize: size.width * 0.1,
            //   color: Colors.white),
            //   textAlign: TextAlign.center,
            // ),
            SizedBox(
              height: size.height * 0.08,
            ),

            RoundedButtom(
              text: 'Login ',
              textColor: Colors.black,
              color: PinkLColor,
              press: () => () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
            RoundedButtom(
                text: 'Sign Up',
                textColor: Colors.black,
                color: PinkLColor,
                press: () => () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignupScreen()));
                    }),
          ],
        ),
      ),
    );
  }
}
