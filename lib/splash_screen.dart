import 'dart:async';

import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => MyHomePage(
            title: "Flutter Demo Home Page",
          ),
        ),
      );
    });
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            key: Key("Logo"),
            flex: 3,
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpAPkvUxlYoplKzA_Vyh1Dd9c-wLhT34Oi-Bryruk2e1q2b2mWhSkqkvHOmQp2r5X63sCpHFDftODSBHgzwBbpxvPChnClEwY&usqp=CAU&ec=45732302",
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                children: [
                  Text("Splash Screen"),
                  SizedBox(
                    height: 10,
                  ),
                  CircularProgressIndicator(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
