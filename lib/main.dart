import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:otterli/screens/Login/login.dart';
import 'package:otterli/screens/Signup/signup.dart';
import 'package:otterli/screens/Splash/splash.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/signup': (context) => const Signup(),
      '/login': (context) => const Login(),
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
