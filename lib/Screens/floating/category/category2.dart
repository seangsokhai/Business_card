import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smalltest/Screens/cardsuccess.dart';
import 'package:smalltest/Screens/floating/category/component/business.dart';
import 'package:smalltest/constants.dart';

import 'component/programming.dart';

// import 'package:smalltest/constants.dart';

class CateGoryTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: PinkColor,
        title:
            Center(child: new Text("Categories", textAlign: TextAlign.center)),
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int index = 0;

  final categories = [
    'Business',
    'Programmer',
    'Engineer',
    'Lawyer',
    'Network',
    'Cyber',
    'Consultant',
    'IT support',
    'Web developer',
  ];

  void PageCategory(int x) {
    setState(() {
      index = x;
    });
  }

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
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.006,
                      ),
                      Container(
                        width: double.infinity,
                        // height: size.height * 0.04,
                        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: CupertinoSearchTextField(
                          backgroundColor: Colors.grey.shade50,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              color: Colors.white10,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        PageCategory(index);
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 10, right: 10, top: 15, bottom: 15),
                        padding: EdgeInsets.only(
                          left: 10,
                          top: 5,
                          right: 10,
                          bottom: 5,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF166432),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Text(
                            categories[index],
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Expanded(
              flex: 7,
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      if (index == 0) ...[
                        BusinessPage(
                            categories: categories, index: index, size: size),
                      ] else if (index == 1) ...[
                        ProgramPage(
                            categories: categories, index: index, size: size),
                      ] else if (index == 2) ...[
                        BusinessPage(
                            categories: categories, index: index, size: size),
                      ] else if (index == 3) ...[
                        BusinessPage(
                            categories: categories, index: index, size: size),
                      ] else if (index == 4) ...[
                        BusinessPage(
                            categories: categories, index: index, size: size),
                      ] else if (index == 5) ...[
                        BusinessPage(
                            categories: categories, index: index, size: size),
                      ],
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
