import 'package:flutter/material.dart';
import 'package:smalltest/Screens/floating/team/components/body.dart';
import 'package:smalltest/constants.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: PinkColor,
      // appBar: AppBar(
      //   title: Text("Sign Up"),
      // ),
      body: Body(),
    );
  }
}

