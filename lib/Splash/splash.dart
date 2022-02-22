import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app/Login/login.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateUser();
  }

  navigateUser() async {
    Future.delayed(const Duration(seconds: 2), () {
      // EasyLoading.dismiss();
      Navigator.pushNamedAndRemoveUntil(context, "/login", (_) => false);
      //Navigator.pushNamed(context, '/second');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          body: Center(
            child: Center(
              child:
              // SizedBox(height: 100,),
              SizedBox(
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset('images/medipol.png',
                      alignment: Alignment.center,
                      height: 200,
                      width: MediaQuery.of(context).size.width * 0.8),
                ),
              ),
            ),
          ),
        ));
  }
}
