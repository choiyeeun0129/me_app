import 'dart:async';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../routes/app_routes.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      print("본인인증 페이지로 이동 시도: $routeIdentificationPage");
      Navigator.pushReplacementNamed(context, routeIdentificationPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Image.asset('assets/icons/ill_mot.png'),
      ),
    );
  }
}
