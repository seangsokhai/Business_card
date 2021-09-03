import 'package:flutter/material.dart';
import 'package:smalltest/Screens/floating/profile/component/body.dart';
import 'package:smalltest/constants.dart';

class Profile extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(context) {
    Size size = MediaQuery.of(context).size;
    return AppBar(
      backgroundColor: PinkColor,
      leading: SizedBox(),
      centerTitle: true,
      title: Text("Profile"),
      actions: <Widget>[
        TextButton(
          onPressed: () {},
          child: Text(
            "Edit",
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.05,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
