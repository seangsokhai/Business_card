import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:smalltest/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/rendering.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    Key? key,
    required this.iconSrc,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String iconSrc, title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: press(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: <Widget>[
                SvgPicture.asset(
                  iconSrc,
                  height: size.height * 0.05,
                ),
                SizedBox(width: size.width * 0.02),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: size.height * 0.01, //16
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: size.width * 0.05,
                  // color: PinkColor,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
