import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/routes.dart';
import 'package:flutter/material.dart';

import 'screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: kTextColor,
          ),
          bodyText2: TextStyle(
            color: kTextColor,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: SplashScreen()
      initialRoute: SplashScreen.route,
      routes: routes,
    );
  }
}
