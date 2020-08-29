import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/screens/otp_verification/components/otp_form.dart';
import 'package:e_commerce_ui/screens/otp_verification/components/timer.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class OtpVerificationBody extends StatefulWidget {
  @override
  _OtpVerificationBodyState createState() => _OtpVerificationBodyState();
}

class _OtpVerificationBodyState extends State<OtpVerificationBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              Text("We have sent you the code"),
              buildTimer(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.15,
              ),
              OtpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Resend OTP Code",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
