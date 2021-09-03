import 'package:flutter/material.dart';
import 'package:smalltest/constants.dart';

class RoundedButtom extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButtom({
    Key? key, 
    required this.text, 
    required this.press,
    this.color =  PinkColor, 
    this.textColor = Colors.white,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            backgroundColor: color,
            textStyle: const TextStyle(fontSize: 20),           
          ),
        
          onPressed: press(),
          child: Text(
            text,
            style: TextStyle(color: textColor ),
          ),
        ),
      ),
    );
  }
}