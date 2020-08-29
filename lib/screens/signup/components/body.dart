import 'package:e_commerce_ui/components/social_card.dart';
import 'package:e_commerce_ui/screens/signup/components/sign_up_form.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_ui/constants.dart';

class SignUpBody extends StatefulWidget {
  @override
  _SignUpBodyState createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              Text(
                'Register Account',
                style: headingStyle,
              ),
              Text(
                'Complete the details or countuine',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              SignUpTextFormField(),
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
              Text(
                'I Agree and Confrim',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
