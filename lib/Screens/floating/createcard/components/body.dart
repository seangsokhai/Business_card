import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smalltest/Screens/welcome_screen.dart';
import 'package:smalltest/components/round_create.dart';

import 'package:smalltest/constants.dart';

import '../create_OR.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              color: PinkColor,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Image.asset('assets/images/logo.png',
                      height: size.height * 0.18),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                    "Welcome to,",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * 0.05,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text("Business Card Maker",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.05,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Color(0xFFededed),
                    margin: EdgeInsets.only(top: 18, bottom: 0),
                    child: Container(
                      // padding: EdgeInsets.all(5.0),
                      width: 320,
                      height: 155,
                      // margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            left: 15,
                            child: Row(
                              children: [
                                Container(
                                  height: 90,
                                  width: 60,
                                  child: Image.asset(
                                    'assets/images/card.png',
                                    height: size.height * 0.2,
                                    width: size.width * 0.2,
                                  ),
                                ),
                                // SizedBox(
                                //   width: size.width * 0.1,
                                // ),

                                Container(
                                  height: 60,
                                  width: 190,
                                  padding: EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          children: [
                                            Text(
                                              'Bussiness Card',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: PinkColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Divider(color: Colors.black),
                                            Text(
                                              'we are glad to serve you warm meal.',
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 40,
                            child: RoundCreate(
                              text: 'Create Card',
                              textColor: Colors.black,
                              color: PinkColor,
                              press: () => () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => WelcomeScreen()));
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //another card

                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Color(0xFFededed),
                    margin: EdgeInsets.only(top: 25, bottom: 0),
                    child: Container(
                      // padding: EdgeInsets.all(5.0),
                      width: 320,
                      height: 155,
                      // margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            left: 15,
                            child: Row(
                              children: [
                                Container(
                                  height: 100,
                                  width: 60,
                                  child: Image.asset(
                                    'assets/images/QR.png',
                                    height: size.height * 0.2,
                                    width: size.width * 0.2,
                                  ),
                                ),
                                // SizedBox(
                                //   width: size.width * 0.1,
                                // ),

                                Container(
                                  height: 60,
                                  width: 190,
                                  padding: EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          children: [
                                            Text(
                                              'QR Cord',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: PinkColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Divider(color: Colors.black),
                                            Text(
                                              'we are glad to serve you warm meal.',
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 40,
                            child: RoundCreate(
                              text: 'Create QR Code',
                              textColor: Colors.black,
                              color: PinkColor,
                              press: () => () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => CreateQR()));
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // ),
        ],
      ),
    );
  }
}

// class CardMaking extends StatelessWidget {
//   const CardMaking({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return AspectRatio(
//       aspectRatio: 0.165,
//       child: Container(
//         decoration: BoxDecoration(
//             color: Colors.grey[300], borderRadius: BorderRadius.circular(30)),
//         child: Row(
//           children: <Widget>[
//             AspectRatio(
//               aspectRatio: 0.71,
//               child: Image.asset(
//                 'assets/images/logo.png',
//                 height: size.height * 0.1,
//                 fit: BoxFit.cover,
//                 alignment: Alignment.centerRight,
//               ),
//             ),
//             Expanded(
//                 child: Column(
//               children: <Widget>[
//                 Text('''Business Card
//                 we are glad to serve you warm meal
//                 '''),
//               ],
//             ))
//           ],
//         ),
//       ),
//     );
//   }
// }
