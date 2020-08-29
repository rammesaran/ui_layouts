import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/screens/complete_profile/components/complete_form.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class CompleteProfileBody extends StatefulWidget {
  @override
  _CompleteProfileBodyState createState() => _CompleteProfileBodyState();
}

class _CompleteProfileBodyState extends State<CompleteProfileBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            Text(
              'Complete Profile',
              style: headingStyle,
            ),
            Text(
              "Complete your details or continue \n with Social Media",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.05,
            ),
            CompleteProfileTextField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Text("Terms and condtion"),
          ],
        ),
      ),
    );
  }
}
