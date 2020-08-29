import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);

const kPrimaryGradientColor = LinearGradient(
  colors: [
    Color(0xFFFFA53E),
    Color(0xFFFF7643),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

//form validation

final RegExp emailValidationRegExp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

const String kEmailNullError = "please enter the Email";

const String kInvalidEmailError = "please enter valid Email";

const String kPassNullError = "please enter your password";

const String kshortPassError = "password is too short";

const String kMatchPassError = "Passwords don't match";
