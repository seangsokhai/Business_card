import 'package:flutter/material.dart';
import 'package:smalltest/Screens/floating/profile/component/body.dart';
import 'package:smalltest/constants.dart';

class Profile extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: PinkColor,
        automaticallyImplyLeading: false,
        title: Center(child: new Text("Profile", textAlign: TextAlign.center)),
      ),
      body: ProfilePageView (),
    );
  }
}
