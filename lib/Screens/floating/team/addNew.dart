import 'package:flutter/material.dart';
import 'package:smalltest/Screens/floating/team/team.dart';
import 'package:smalltest/Screens/welcome_screen.dart';
import 'package:smalltest/components/rounded_bottom.dart';
import 'package:smalltest/components/rounded_input_field.dart';
import 'package:smalltest/components/rounded_signup_field.dart';
import 'package:smalltest/constants.dart';

class AddNew extends StatelessWidget {
  const AddNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: PinkColor,
      appBar: AppBar(
        elevation: 0,

        // automaticallyImplyLeading: false, // Used for removing back buttoon.
        title: new Center(
          child: new Text(
            "Team Card",
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: PinkColor,
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: (20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Positioned(
                  top: 10,
                  left: 20,
                  child: Container(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    width: 400,
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Create Your Team Card",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * 0.06,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Text(
                          "Please Input your team informations",
                          style: TextStyle(
                            fontSize: size.width * 0.04,
                            color: PinkLColor,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: size.height * 0.025,
                ),
                Container(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundSignup(
                          hintText: 'First name',
                          onChange: (value) {},
                        ),
                        SizedBox(
                          width: size.width * 0.02,
                        ),
                        RoundSignup(
                          hintText: 'Last name',
                          onChange: (value) {},
                        ),
                      ],
                    ),
                  ),
                ),
                RoundInputFeild(
                  icon: Icons.food_bank,
                  hintText: 'Company Name',
                  onChange: (value) {},
                ),
                RoundInputFeild(
                  icon: Icons.work,
                  hintText: 'Position',
                  onChange: (value) {},
                ),
                RoundInputFeild(
                  icon: Icons.phone,
                  hintText: 'Phone number',
                  onChange: (value) {},
                ),
                RoundInputFeild(
                  icon: Icons.email,
                  hintText: 'Email',
                  onChange: (value) {},
                ),
                RoundInputFeild(
                  icon: Icons.location_city,
                  hintText: 'Company Address',
                  onChange: (value) {},
                ),
                RoundInputFeild(
                  icon: Icons.web,
                  hintText: 'Link Website',
                  onChange: (value) {},
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(90, 80),
                              primary: PinkLColor,
                              onPrimary: PinkColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                          onPressed: () {},
                          child: Text('Upload Your Pic'),
                        ),
                        // const SizedBox(height: 30),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(90, 80),
                              primary: PinkLColor,
                              onPrimary: PinkColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                          onPressed: () {},
                          child: Text('Upload Your Logo'),
                        ),
                      ],
                    ),
                  ),
                ),

                // RoundInputFeild(
                //   icon: Icons.image,
                //   hintText: 'Your Profile',
                //   onChange: (value) {},
                // ),
                // RoundInputFeild(
                //   icon: Icons.image,
                //   hintText: 'Company Logo',
                //   onChange: (value) {},
                // ),

                // scrollDirection: Axis.vertical,

                SizedBox(
                  height: size.height * 0.05,
                ),
                RoundedButtom(
                  text: 'Submit',
                  textColor: Colors.black,
                  color: PinkLColor,
                  press: () => () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TeamScreen()));
                  },
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
