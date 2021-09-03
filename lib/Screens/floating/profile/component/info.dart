import 'package:flutter/material.dart';
import 'package:smalltest/constants.dart';

class Info extends StatelessWidget {
  final String name, email, image;
  const Info({
    Key? key,
    required this.name,
    required this.email,
    required this.image,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.4, // 240
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CustomShape(),
            child: Container(
              height: size.height * 0.25, //150
              color: PinkColor,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: size.height * 0.02), //10
                  height: size.height * 0.3, //140
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: size.width * 0.18, //8
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image),
                      
                    ),
                  ),
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: size.width * 0.02, // 22
                    color: PinkColor,
                  ),
                ),
                // SizedBox(height: size.height * 0.02), //5
                Text(
                  email,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF8492A2),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}