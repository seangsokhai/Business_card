import 'package:flutter/material.dart';
import 'package:smalltest/Screens/floating/floating.dart';
// import 'package:line_icons/line_icons.dart';


void main() => runApp(MaterialApp(
    builder: (context, child) {
      return Directionality(textDirection: TextDirection.ltr, child: child!);
    },
    title: 'GNav',
    theme: ThemeData(
      primaryColor: Colors.grey[800],
    ),
    home: Floating(), 

    ));

    

