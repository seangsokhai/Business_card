import 'package:flutter/material.dart';
import 'package:smalltest/Screens/login/components/body.dart';
import 'package:smalltest/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: PinkColor,
      body: Body(),
    );
  }
}

