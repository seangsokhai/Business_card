import 'package:flutter/material.dart';
import 'package:smalltest/constants.dart';

class Orsuccess extends StatelessWidget {
  const Orsuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PinkLColor,
      appBar: AppBar(
        elevation: 0,
        // automaticallyImplyLeading: false, // Used for removing back buttoon.
        // title: new Center(
        //   child: new Text("Team QR Code"),
        // ),
        iconTheme: IconThemeData(
          color: Color(0xFF166432), //change your color here
        ),
        backgroundColor: PinkLColor,
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
    return Container(
      padding: EdgeInsets.only(left: 35, right: 35, top: 20),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Scan QR code",
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text(
                  "Ask your cilents to open their camera on their smart phone and aim it at the QR code below. This will load your invite link on their browser.",
                  style: TextStyle(fontSize: 12, color: Colors.black87),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Container(
                  width: 270,
                  height: 270,
                  padding: EdgeInsets.only(top: 10),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset('assets/images/qr-code.png'),
                  ),
                ),
                Container(
                  width: 160,
                  height: 100,
                  padding: EdgeInsets.only(top: 30),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipOval(
                          child: Material(
                            color: Colors.grey[300], // Button color
                            child: InkWell(
                              splashColor: Color(0xFF166432), // Splash color
                              onTap: () {},
                              child: SizedBox(
                                width: 56,
                                height: 56,
                                child: Icon(
                                  Icons.save_alt_rounded,
                                  size: 30,
                                  color: Color(0xFF166432),
                                ),
                              ),
                            ),
                          ),
                        ),
                        ClipOval(
                          child: Material(
                            color: Colors.grey[300], // Button color
                            child: InkWell(
                              splashColor: Color(0xFF166432), // Splash color
                              onTap: () {},
                              child: SizedBox(
                                width: 56,
                                height: 56,
                                child: Icon(
                                  Icons.share_outlined,
                                  size: 30,
                                  color: Color(0xFF166432),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          'Your QR Code Successful',
                          style: TextStyle(fontSize: 12, color: Colors.black87),
                        ),
                        SizedBox(
                          height: size.height * 0.008,
                        ),
                        Text(
                          'Copy right @ 2021',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
