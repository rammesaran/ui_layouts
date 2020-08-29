import 'package:e_commerce_ui/routes.dart';
import 'package:e_commerce_ui/screens/splash/splash_screen.dart';
import 'package:e_commerce_ui/theme.dart';
import 'package:flutter/material.dart';

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
      theme: themeData(),
      //home: SplashScreen()
      initialRoute: SplashScreen.route,
      //initialRoute: CompleteProfileScreen.routeName,
      routes: routes,
    );
  }
}
