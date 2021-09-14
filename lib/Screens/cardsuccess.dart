import 'package:flutter/material.dart';
import 'package:smalltest/constants.dart';
import 'package:photo_view/photo_view.dart';

class Cardsuccess extends StatelessWidget {
  const Cardsuccess({Key? key}) : super(key: key);

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
      padding: EdgeInsets.only(left: 35, right: 35),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Bussiness Card",
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Text(
                  "Sharing your cilents with your bussiness card to let them know and contact your service",
                  style: TextStyle(fontSize: 12, color: Colors.black87),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              children: [
                Container(
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Font Side'))),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: AspectRatio(
                        aspectRatio: 5 / 2,
                        child: ClipRect(
                          child: PhotoView(
                            backgroundDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            imageProvider: AssetImage("assets/images/back.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.008,
                ),
                Container(
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Back Side'))),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: AspectRatio(
                        aspectRatio: 5 / 2,
                        child: ClipRect(
                          child: PhotoView(
                            backgroundDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            imageProvider:
                                AssetImage("assets/images/cardfront.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 140,
                  height: 150,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 25),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipOval(
                                child: Material(
                                  color: Colors.grey[300], // Button color
                                  child: InkWell(
                                    splashColor:
                                        Color(0xFF166432), // Splash color
                                    onTap: () {},
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        Icons.save_alt_rounded,
                                        size: 28,
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
                                    splashColor:
                                        Color(0xFF166432), // Splash color
                                    onTap: () {},
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        Icons.share_outlined,
                                        size: 28,
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
                        padding: EdgeInsets.only(top: 10),

                        child: Column(
                          children: [
                            Text(
                              'Your QR Code Successful',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black87),
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
                        // ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
