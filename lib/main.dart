import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:updates_2020/screens/description.dart';
import 'package:updates_2020/screens/home.dart';
import 'package:updates_2020/screens/login.dart';
import 'package:updates_2020/screens/signup.dart';
import 'package:updates_2020/screens/splash.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
    statusBarIconBrightness: Brightness.light, // status bar icons' color
    systemNavigationBarIconBrightness:
        Brightness.dark, //navigation bar icons' color
  ));
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/Splash',
      routes: {
        '/sign': (context) => SignUp(),
        '/Splash': (context) => Splash(),
        '/': (context) => Login(),
        '/home': (context) => Home(),
        '/des': (context) => Des(),
      },
    ),
  );
}
