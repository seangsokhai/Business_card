import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smalltest/Screens/floating/profile/profiledit.dart';
import 'package:smalltest/components/listyourcard.dart';
// import 'package:smalltest/components/listyourcard.dart';
import 'package:smalltest/constants.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class ProfilePageView extends StatefulWidget {
  const ProfilePageView({Key? key}) : super(key: key);

  @override
  _ProfilePageViewState createState() => _ProfilePageViewState();
}

class _ProfilePageViewState extends State<ProfilePageView> {
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  color: PinkColor,
                  padding: EdgeInsets.only(left: 30, right: 20, bottom: 120),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Profile',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 22),
                      ),
                      SizedBox(
                        width: 60,
                        height: 25,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        ProfileEdit()));
                          },
                          child: Text(
                            'Edit',
                            style: TextStyle(fontSize: 14),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFF166432),
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                    ],
                  ),
                ),

                //pageview
                Container(
                  height: 500,
                  child: PageView(
                    pageSnapping: true,
                    controller: pageController,
                    children: [
                      Container(
                        height: 500,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                child: Column(
                                  children: [
                                    SizedBox(height: size.height * 0.1),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Your QR Card',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                // color: Colors.blue,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      ListyourCard(
                                        img: 'assets/images/cardfront.png',
                                        txt: 'Seang Sokhai',
                                      ),
                                      ListyourCard(
                                        img: 'assets/images/back.png',
                                        txt: 'Seang Sokhai',
                                      ),
                                      ListyourCard(
                                        img: 'assets/images/cardfront.png',
                                        txt: 'Seang Sokhai',
                                      ),
                                      ListyourCard(
                                        img: 'assets/images/back.png',
                                        txt: 'Seang Sokhai',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                // color: Colors.pink,
                                child: Column(
                                  children: [
                                    SizedBox(height: size.height * 0.025),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Team Card',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Container(
                                // color: Colors.black,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      ListyourCard(
                                        img: 'assets/images/back.png',
                                        txt: 'Team Web',
                                      ),
                                      ListyourCard(
                                        img: 'assets/images/cardfront.png',
                                        txt: 'Team Tecnical',
                                      ),
                                      ListyourCard(
                                        img: 'assets/images/back.png',
                                        txt: 'abcdefg',
                                      ),
                                      ListyourCard(
                                        img: 'assets/images/cardfront.png',
                                        txt: 'abcdefg',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //qr card pagesview
                      Container(
                        height: 500,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                child: Column(
                                  children: [
                                    SizedBox(height: size.height * 0.1),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Your QR Card',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                // color: Colors.blue,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      ListyourCard(
                                        img: 'assets/images/QR.png',
                                        txt: 'Seang Sokhai',
                                      ),
                                      ListyourCard(
                                        img: 'assets/images/QR.png',
                                        txt: 'Seang Sokhai',
                                      ),
                                      ListyourCard(
                                        img: 'assets/images/QR.png',
                                        txt: 'Seang Sokhai',
                                      ),
                                      ListyourCard(
                                        img: 'assets/images/QR.png',
                                        txt: 'Seang Sokhai',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                // color: Colors.pink,
                                child: Column(
                                  children: [
                                    SizedBox(height: size.height * 0.025),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Team Card',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Container(
                                // color: Colors.black,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      ListyourCard(
                                        img: 'assets/images/QR.png',
                                        txt: 'Team Web',
                                      ),
                                      ListyourCard(
                                        img: 'assets/images/QR.png',
                                        txt: 'Team Tecnical',
                                      ),
                                      ListyourCard(
                                        img: 'assets/images/QR.png',
                                        txt: 'abcdefg',
                                      ),
                                      ListyourCard(
                                        img: 'assets/images/QR.png',
                                        txt: 'abcdefg',
                                      ),
                                    ],
                                  ),
                                ),
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

          //Top profile
          Positioned(
            top: 45,
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 5)
                  ]),
              child: Column(
                children: [
                  Container(
                    width: 400,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            padding: EdgeInsets.only(top: 0, left: 5),
                            child: Image.asset(
                              'assets/images/Engineer.png',
                              height: size.height * 0.2,
                              width: size.width * 0.2,
                            ),
                          ),
                          SizedBox(width: size.width * 0.06),
                          Container(
                            height: 70,
                            width: 100,
                            padding: EdgeInsets.only(top: 0, left: 0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Mr.Saiihok',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  // Divider(color: Colors.black),
                                  Text(
                                    'User ID 1109062',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.grey,
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
                  SizedBox(height: 10),
                  Container(
                    height: 40,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 40,
                            // child: ElevatedButton(
                            //   onPressed: () {
                            //     pageController.animateToPage(0,
                            //         duration: Duration(milliseconds: 250),
                            //         curve: Curves.bounceInOut);
                            //   },
                            //   child: Text('Card'),
                            //   style: ElevatedButton.styleFrom(
                            //     primary: PinkColor,
                            //     onPrimary: PinkLColor,
                            //     shape: RoundedRectangleBorder(
                            //       borderRadius: BorderRadius.circular(0),
                            //     ),
                            //   ),
                            // ),
                            child: AnimatedButton(
                              onPress: () {
                                pageController.animateToPage(0,
                                    duration: Duration(microseconds: 250),
                                    curve: Curves.bounceInOut);
                              },
                              height: 70,
                              width: 200,
                              text: 'Card',
                              isReverse: true,
                              selectedTextColor: Colors.black,
                              transitionType: TransitionType.LEFT_TO_RIGHT,
                              backgroundColor: Color(0xFF166432),
                              borderColor: Color(0xFF166432),
                              borderRadius: 0,
                              borderWidth: 2,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 40,
                            // child: OutlinedButton(
                            //   onPressed: () {
                            //     pageController.animateToPage(1,
                            //         duration: Duration(milliseconds: 250),
                            //         curve: Curves.bounceInOut);
                            //   },
                            //   child: Text(
                            //     'OR Code',
                            //     style: TextStyle(
                            //         fontSize: 16, color: Colors.black),
                            //   ),
                            // style: OutlinedButton.styleFrom(
                            //   side: BorderSide(color: PinkColor, width: 2),
                            //   shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(0),
                            //   ),
                            // ),
                            child: AnimatedButton(
                              onPress: () {
                                pageController.animateToPage(1,
                                    duration: Duration(microseconds: 250),
                                    curve: Curves.bounceInOut);
                              },
                              height: 70,
                              width: 200,
                              text: 'QR Cord',
                              isReverse: true,
                              selectedTextColor: Colors.black,
                              transitionType: TransitionType.LEFT_TO_RIGHT,
                              backgroundColor: Color(0xFF166432),
                              borderColor: Color(0xFF166432),
                              borderRadius: 0,
                              borderWidth: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
