import 'package:e_commerce_ui/size_config.dart';
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

const String kNameNullError = "Please enter name";
const String kPhoneNumberNullError = "Please enter your phone number";
const String kAddressNullError = "Please enter address";

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

final inPutdecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: getProportionateScreenWidth(15),
  ),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(
      color: kTextColor,
    ),
  );
}
