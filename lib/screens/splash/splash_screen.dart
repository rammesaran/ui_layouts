import 'package:e_commerce_ui/screens/splash/components/body.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String route = '/Splash';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SplashScreenBody(),
    );
  }
}
