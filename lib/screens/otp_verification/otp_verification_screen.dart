import 'package:e_commerce_ui/screens/otp_verification/components/body.dart';
import 'package:flutter/material.dart';

class OtpVerificationScreen extends StatelessWidget {
  static final String routeName = "/OtpVerification";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: OtpVerificationBody(),
    );
  }
}
