import 'package:flutter/material.dart';
import 'package:me_app2/routes/app_router.dart';
import 'package:me_app2/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: routeSplashPage,  // 시작 화면
      onGenerateRoute: getRoute,
    );
  }
}