import 'package:flutter/material.dart';
import 'package:smalltest/Screens/floating/team/addNew.dart';
import 'package:smalltest/Screens/floating/team/teamProfile.dart';

import '../../../constants.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: PinkColor,
        automaticallyImplyLeading: false,
        title:
            Center(child: new Text("Team Card", textAlign: TextAlign.center)),
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: PinkColor,
                padding: EdgeInsets.only(left: 30, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Create your team Card',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    SizedBox(
                      height: 40,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => AddNew()));
                        },
                        icon: Icon(Icons.add_circle_sharp),
                        label: Text('Add New'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Color(0xFFededed),
                        margin: EdgeInsets.only(top: 18, bottom: 0),
                        child: Container(
                          width: 380,
                          height: 90,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 10,
                                left: 15,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 70,
                                      width: 90,
                                      child: Image.asset(
                                        'assets/images/Engineer.png',
                                        height: size.height * 0.2,
                                        width: size.width * 0.2,
                                      ),
                                    ),
                                    SizedBox(width: size.width * 0.06),
                                    Container(
                                      height: 70,
                                      width: 120,
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Mr.Micheal',
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
                                              'Company: Grow Up Unlimited',
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(
                                              'Position: Web Developer',
                                              style: TextStyle(
                                                fontSize: 11,
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
                                      width: 80,
                                      // borderRadius: BorderRadius.circular(10),
                                      // padding:
                                      //     EdgeInsets.only(right: 20, left: 20),

                                      child: OutlinedButton.icon(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder:
                                                      (BuildContext context) =>
                                                          TeamProfile()));
                                        },
                                        icon: Icon(
                                          Icons.visibility,
                                          color: Colors.black,
                                          size: 15,
                                        ),
                                        label: Text(
                                          'View',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.black),
                                        ),
                                        style: OutlinedButton.styleFrom(
                                          side: BorderSide(
                                              color: PinkColor, width: 1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(29),
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
                      ),
                    ],
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
