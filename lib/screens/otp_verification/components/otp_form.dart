import 'package:e_commerce_ui/components/default_button.dart';
import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class OtpForm extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode pin2focus;
  FocusNode pin3focus;
  FocusNode pin4focus;
  @override
  void initState() {
    pin2focus = FocusNode();
    pin3focus = FocusNode();
    pin3focus = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    pin2focus.dispose();
    pin3focus.dispose();
    pin4focus.dispose();
    super.dispose();
  }

  void nextField({String value, FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  autofocus: true,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  decoration: inPutdecoration,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  onChanged: (myvalue) {
                    nextField(
                      value: myvalue,
                      focusNode: pin2focus,
                    );
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin2focus,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  decoration: inPutdecoration,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  onChanged: (myvalue) {
                    nextField(
                      value: myvalue,
                      focusNode: pin3focus,
                    );
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin3focus,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  decoration: inPutdecoration,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  onChanged: (myvalue) {
                    nextField(
                      value: myvalue,
                      focusNode: pin4focus,
                    );
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin4focus,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  decoration: inPutdecoration,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  onChanged: (myvalue) {
                    pin4focus.unfocus();
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.15,
          ),
          DefaultButton(
            text: "Verify",
            onpress: () {},
          ),
        ],
      ),
    );
  }
}
