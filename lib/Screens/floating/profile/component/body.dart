import 'package:flutter/material.dart';

import 'package:smalltest/Screens/floating/profile/component/info.dart';
import 'package:smalltest/Screens/floating/profile/component/profile_detail.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Info(
            image: "assets/images/logo.png",
            name: "Jhon Doe",
            email: "Jhondoe01@gmail.com",
          ),
         
          // SizedBox(height: size.height * 0.01), //20
          ProfileMenuItem(
            iconSrc: "assets/icons/chat.svg",
            title: "Saved Recipes",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/facebook.svg",
            title: "Super Plan",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/google-plus.svg",
            title: "Change Language",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/twitter.svg",
            title: "Help",
            press: () {},
          ),
         
        ],
      ),
    );
  }
}
