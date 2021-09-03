import 'package:flutter/material.dart';
import 'package:smalltest/components/signup_field.dart';


class RoundSignup extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChange;

  const RoundSignup({
    Key? key,
    required this.hintText,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignupField(
      child: TextField(
        onChanged: onChange,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}