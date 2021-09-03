// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smalltest/constants.dart';
import 'components/body.dart';


class WelcomeScreen extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PinkColor,
      body: Body(),
    );
  }
}

