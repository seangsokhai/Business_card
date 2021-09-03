import 'package:flutter/material.dart';
import 'package:smalltest/Screens/welcome_screen.dart';
import 'package:smalltest/constants.dart';
// import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIOverlays(
  //     [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          
          return MaterialApp(debugShowCheckedModeBanner: false,home: Splash());
        } else {
          // Loading is done, return the app:
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primaryColor: PinkColor,
        scaffoldBackgroundColor: Colors.white,
            ),
            home: WelcomeScreen(),
          );
        }
      },
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      
      backgroundColor: PinkColor.withOpacity(1.0),
      body: Center(child: Image.asset('assets/images/logo.png',  height: size.height * 0.3,)),
    );
  }
}
class Init {
  Init._();
  static final instance = Init._();

  Future initialize() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    await Future.delayed(Duration(seconds: 3));
  }
}
