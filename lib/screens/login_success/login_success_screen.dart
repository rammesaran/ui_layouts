import 'package:e_commerce_ui/screens/login_success/components/body.dart';
import 'package:flutter/material.dart';

class LoginSucessScreen extends StatelessWidget {
  static String routeName = "/loginSucess";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        centerTitle: true,
        title: Text(
          "Login Success",
        ),
      ),
      body: LoginSucessBody(),
    );
  }
}
