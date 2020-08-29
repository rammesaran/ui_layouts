import 'package:e_commerce_ui/screens/complete_profile/complete_profile_screen.dart';
import 'package:e_commerce_ui/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_ui/screens/login_success/login_success_screen.dart';
import 'package:e_commerce_ui/screens/otp_verification/otp_verification_screen.dart';
import 'package:e_commerce_ui/screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce_ui/screens/signup/sign_up_screen.dart';
import 'package:e_commerce_ui/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.route: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSucessScreen.routeName: (context) => LoginSucessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpVerificationScreen.routeName: (context) => OtpVerificationScreen(),
};
