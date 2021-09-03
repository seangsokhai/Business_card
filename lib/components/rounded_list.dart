import 'package:flutter/material.dart';
import 'package:smalltest/constants.dart';

class RoundList extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundList({
    Key? key,
    required this.text,
    required this.press,
    this.color = PinkColor,
    this.textColor = Colors.white,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: 390,
      height: 180,
      // borderRadius: BorderRadius.circular(10),
      child: OutlinedButton(
        
        onPressed: press(),
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: PinkColor, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(29),
          ),
        ),
      ),
    );
  }
}
