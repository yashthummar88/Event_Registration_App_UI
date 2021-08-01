import 'dart:async';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(
          seconds: 3,
        ), () {
      Navigator.of(context).pushReplacementNamed('/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.9), BlendMode.dstATop),
            image: AssetImage('Image/Home/HomeBackground.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'RnW Students Represents',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'yash',
                fontWeight: FontWeight.bold,

                // textBaseline: TextBaseline.none,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Spacer(),
                Image.asset(
                  "Image/LightLogo2.png",
                  scale: 4,
                  color: Colors.white,
                ),
                Text(
                  "PDATES 2k21",
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                    fontFamily: 'yash',
                    fontWeight: FontWeight.bold,

                    // textBaseline: TextBaseline.none,
                  ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
