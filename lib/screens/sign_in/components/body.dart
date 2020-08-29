import 'package:e_commerce_ui/components/no_account_text.dart';
import 'package:e_commerce_ui/components/social_card.dart';
import 'package:e_commerce_ui/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_ui/screens/sign_in/components/signin_form.dart';

import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class SignInBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20.0),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with Email",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                SignInFromField(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      imagePath: "assets/icons/facebook-2.svg",
                      onPressTap: () {},
                    ),
                    SocialCard(
                      imagePath: "assets/icons/twitter.svg",
                      onPressTap: () {},
                    ),
                    SocialCard(
                      imagePath: "assets/icons/google-icon.svg",
                      onPressTap: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                AccountCreation(
                  press: () => Navigator.popAndPushNamed(
                      context, ForgotPasswordScreen.routeName),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
