import 'package:flutter/material.dart';

import '../constants.dart';

class ListyourCard extends StatelessWidget {
  final String img;
  final String txt;
  const ListyourCard({
    Key? key,
    required this.img,
    required this.txt,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: 10,
      left: 35,
      child: Padding(
        padding: const EdgeInsets.only(left: 60, top: 10, bottom: 10),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 70,
              child: Image.asset(
                img,
                height: size.height * 0.1,
                width: size.width * 0.1,
              ),
            ),
            SizedBox(width: size.width * 0.06),
            Container(
              height: 70,
              width: 120,
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      txt,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    // Divider(color: Colors.black),
                    Text(
                      'Company: Grow Up Unlimited',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Position: Web Developer',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: size.width * 0.06),
            Container(
              height: 30,
              width: 70,
              // borderRadius: BorderRadius.circular(10),
              // padding:
              //     EdgeInsets.only(right: 20, left: 20),

              child: OutlinedButton.icon(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder:
                  //             (BuildContext context) =>
                  //                 TeamProfile()));
                },
                icon: Icon(
                  Icons.visibility,
                  color: Colors.black,
                  size: 10,
                ),
                label: Text(
                  'View',
                  style: TextStyle(fontSize: 8, color: Colors.black),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: PinkColor, width: 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(29),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


