import 'package:flutter/material.dart';
import 'package:smalltest/Screens/floating/team/teamEditProfile.dart';

import '../../../constants.dart';

class TeamProfile extends StatelessWidget {
  const TeamProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: PinkColor,
        title: Center(
            child: new Text("Edit Team Profile", textAlign: TextAlign.center)),
      ),
      backgroundColor: Color(0xFFededed),
      body: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
            child: Container(
              height: 150,
              width: double.infinity,
              color: PinkColor,
              padding: EdgeInsets.only(left: 30, right: 20, bottom: 90),
              child: Row(
                children: [
                  Text(
                    'Team Profile',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 26),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 65,
            child: Container(
              height: 550,
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
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 90,
                            width: 120,
                            padding: EdgeInsets.only(top: 15, left: 10),
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
                            padding: EdgeInsets.only(top: 15, left: 0),
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
                          Container(
                            height: 30,
                            width: 78,
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            TeamEditProfile()));
                              },
                              icon: Icon(
                                Icons.border_color,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Form(
                        key: _formKey,
                        child: Container(
                          padding: EdgeInsets.all(25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Full Name",
                                  style: TextStyle(color: Colors.grey)),
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Seang Sokhai',
                                ),
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your name';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Text(
                                "Phone Number",
                                style: TextStyle(color: Colors.grey),
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: '078300124',
                                ),
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your phnone number';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Text("Company email",
                                  style: TextStyle(color: Colors.grey)),
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'ssokhai@prosethsolutions.com',
                                ),
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your company email';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Text("Position",
                                  style: TextStyle(color: Colors.grey)),
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Web & App Intern',
                                ),
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your position';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Text("Company address",
                                  style: TextStyle(color: Colors.grey)),
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'street 2004',
                                ),
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter company address';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Text("Website",
                                  style: TextStyle(color: Colors.grey)),
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'WWW.saihok.com',
                                ),
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Link your website';
                                  }
                                  return null;
                                },
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
          ),
        ],
      ),
    );
  }
}
