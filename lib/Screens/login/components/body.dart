import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

import 'package:smalltest/Screens/login/components/backgroud.dart';
import 'package:smalltest/Screens/signup/signup.dart';
import 'package:smalltest/Screens/welcome_screen.dart';
import 'package:smalltest/components/Alreadyhaveacc.dart';
import 'package:smalltest/components/rounded_bottom.dart';
import 'package:smalltest/components/rounded_input_field.dart';
import 'package:smalltest/components/roundpassword.dart';
import 'package:smalltest/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/logo.png', height: size.height * 0.15),
              Text(
                "Welcome to,",
                style: TextStyle(
                  color: PinkLColor,
                  fontSize: size.width * 0.08,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                "Business Card Maker",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.08,
                  color: PinkLColor,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Text(
                "Please login to your account",
                style: TextStyle(
                  fontSize: size.width * 0.04,
                  color: PinkLColor,
                ),
                textAlign: TextAlign.left,
              ),
              RoundInputFeild(
                icon: Icons.person,
                hintText: 'Your Email',
                onChange: (value) {},
              ),
              RoundPassword(
                onChanged: (String value) {},
              ),
              RoundedButtom(
                text: 'Login >>>>',
                textColor: Colors.black,
                color: PinkLColor,
                press: () => () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => (WelcomeScreen())));
                },
              ),
              
              Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: size.width * 0.03,
                  color: PinkLColor,
                  
                ),
                textAlign: TextAlign.right,
                
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () => () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignupScreen();
                        // return SignUpScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
