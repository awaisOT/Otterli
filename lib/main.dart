import 'dart:async';

import 'package:flutter/material.dart';
import 'package:otterli/screens/signup.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/signup': (context) => const Signup(),
      // When navigating to the "/second" route, build the SecondScreen widget.
    },
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: SplashScreen(),
  ));

//  runApp(HomePage());
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/signup');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            FlutterLogo(
              size: 100.0,
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
