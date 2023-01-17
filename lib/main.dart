import 'package:first/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute : 'homePage',
    routes:{
      'homePage':(contect)=>MyHomePage()},
  ));
}

