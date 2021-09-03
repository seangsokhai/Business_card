import 'package:flutter/material.dart';
import 'package:smalltest/constants.dart';

class CreateButtom extends StatelessWidget {
  final Widget child;
  const CreateButtom({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.7,
      margin: EdgeInsets.symmetric(vertical: 50),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: PinkLColor, borderRadius: BorderRadius.circular(15)),
      child: child,
    );
  }
}
