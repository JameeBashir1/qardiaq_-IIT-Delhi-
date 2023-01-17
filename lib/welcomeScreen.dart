import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: <Widget>[
            // other widgets go here
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/hakeem_logo1.png',
                width: 300,
                height: 300,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
