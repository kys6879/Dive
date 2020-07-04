import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutterapp/onboard/onboard_page.dart';

class SplashPage extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) =>  OnBoardPage()
        )));
  }

  @override
  Widget build(BuildContext context) {
    AssetImage assetsImage = AssetImage('lib/src/image/splash/splash@3x.png');
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: assetsImage,
              fit: BoxFit.cover
            )
          ),
        )
    );
  }
}