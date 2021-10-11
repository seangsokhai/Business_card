import 'package:flutter/material.dart';
import 'package:smalltest/Screens/cardsuccess.dart';
import 'package:smalltest/constants.dart';

class BusinessPage extends StatelessWidget {
  const BusinessPage({
    Key? key,
    required this.categories,
    required this.index,
    required this.size,
  }) : super(key: key);

  final List<String> categories;
  final int index;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 20, top: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  "${categories[index]}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.035),
                  textAlign: TextAlign.start,
                ),
              ),
              ListCategory(
                text: 'Business 1',
                input: 'Create your card',
                press: () => () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Cardsuccess(),
                    ),
                  );
                },
                img: 'assets/images/Engineer.png',
              ),
              ListCategory(
                text: 'Business 2',
                input: 'Create your card',
                press: () => () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Cardsuccess(),
                    ),
                  );
                },
                img: 'assets/images/Engineer.png',
              ),
              ListCategory(
                text: 'Business 3',
                input: 'Create your card',
                press: () => () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Cardsuccess(),
                    ),
                  );
                },
                img: 'assets/images/Engineer.png',
              ),
            ],
          );
  }
}

class ListCategory extends StatelessWidget {
  final String text;
  final String input;
  final Function press;
  final String img;
  const ListCategory({
    Key? key,
    required this.text,
    required this.input,
    required this.press,
    // required this.color,
    // required this.textColor,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Color(0xFFededed),
      margin: EdgeInsets.only(top: 18, bottom: 0),
      child: Container(
        // padding: EdgeInsets.all(5.0),
        width: 380,
        height: 145,
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
                    width: 120,
                    child: Image.asset(
                      img,
                      height: size.height * 0.2,
                      width: size.width * 0.2,
                    ),
                  ),
                  // SizedBox(
                  //   width: size.width * 0.1,
                  // ),

                  Container(
                    height: 110,
                    width: 190,
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                text,
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
                                'we are glad to serve you warm meal.',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 10,
                          left: 40,
                          child: Container(
                            width: 240,
                            height: 40,
                            // borderRadius: BorderRadius.circular(10),
                            child: OutlinedButton(
                              onPressed: press(),
                              child: Text(
                                input,
                                style: TextStyle(color: Colors.black),
                              ),
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: PinkColor, width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(29),
                                ),
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
    );
  }
}
