import 'package:flutter/material.dart';
import 'package:smalltest/constants.dart';

class SignupField extends StatelessWidget {
  final Widget child;
  const SignupField({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.39,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: PinkLColor, borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}
