import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'landing_page.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
            () => Navigator.push(context, MaterialPageRoute(builder: (context) => LandingPage()))
    );
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300.0,
              child: Image.asset('images/logo.png'),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 100.0),
              child: CircularProgressIndicator(
                backgroundColor: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}
