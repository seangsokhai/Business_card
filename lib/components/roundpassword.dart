import 'package:flutter/material.dart';
import 'package:smalltest/components/text_field_container.dart';
import 'package:smalltest/constants.dart';


class RoundPassword extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundPassword({
    Key? key, required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Password ',
          icon: Icon(
            Icons.lock,
            color: PinkColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: PinkColor,
          ),
        ),
      ),
    );
  }
}
