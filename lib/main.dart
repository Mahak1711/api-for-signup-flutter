import 'package:flutter/material.dart';

import 'package:flutter_assessment/mainscreen.dart';
import 'package:flutter_assessment/secondpage.dart';
import 'package:flutter_assessment/thirdpage.dart';



void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter_Assessment",

      theme: ThemeData(

        primarySwatch: Colors.blue,


      ),
      home: MainScreenPage(),
    );
  }
}