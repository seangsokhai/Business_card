import 'package:flutter/material.dart';
import 'package:smalltest/components/text_field_container.dart';
import 'package:smalltest/constants.dart';


class RoundInputFeild extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChange;

  const RoundInputFeild({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChange,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: PinkColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

