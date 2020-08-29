import 'package:e_commerce_ui/components/default_button.dart';
import 'package:e_commerce_ui/components/form_error.dart';
import 'package:e_commerce_ui/components/sufix_icons.dart';
import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/screens/otp_verification/otp_verification_screen.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class CompleteProfileTextField extends StatefulWidget {
  @override
  _CompleteProfileTextFieldState createState() =>
      _CompleteProfileTextFieldState();
}

class _CompleteProfileTextFieldState extends State<CompleteProfileTextField> {
  final formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String firstName;
  String lastName;
  String phoneNumber;
  String address;

  void addError({String erros}) {
    if (!errors.contains(erros))
      setState(() {
        errors.add(erros);
      });
  }

  void removeError({String erros}) {
    if (errors.contains(erros))
      setState(() {
        errors.remove(erros);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildFirstName(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildLastName(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildPhoneNumber(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildAddress(),
            FormError(errors: errors),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            DefaultButton(
              text: "Continue",
              onpress: () {
                if (formKey.currentState.validate()) {
                  Navigator.pushNamed(context, OtpVerificationScreen.routeName);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildAddress() {
    return TextFormField(
      onSaved: (savedValue) => address = savedValue,
      onChanged: (changeValue) {
        if (changeValue.isNotEmpty) {
          removeError(erros: kAddressNullError);
        }
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(erros: kAddressNullError);
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your Address",
        suffixIcon: CustomSuffixIcon(
          imagePath: "assets/icons/Location point.svg",
        ),
      ),
    );
  }

  TextFormField buildPhoneNumber() {
    return TextFormField(
      onSaved: (savedValue) => phoneNumber = savedValue,
      onChanged: (changeValue) {
        if (changeValue.isNotEmpty) {
          removeError(erros: kPhoneNumberNullError);
        }
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(erros: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your PhoneNumber",
        suffixIcon: CustomSuffixIcon(
          imagePath: "assets/icons/Phone.svg",
        ),
      ),
    );
  }

  TextFormField buildLastName() {
    return TextFormField(
      onSaved: (savedValue) => lastName = savedValue,
      onChanged: (changeValue) {
        if (changeValue.isNotEmpty) {
          removeError(erros: kNameNullError);
        }
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(erros: kNameNullError);
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "LastName",
        hintText: "Enter your LastName",
        suffixIcon: CustomSuffixIcon(
          imagePath: "assets/icons/User.svg",
        ),
      ),
    );
  }

  TextFormField buildFirstName() {
    return TextFormField(
      onSaved: (savedValue) => firstName = savedValue,
      onChanged: (changeValue) {
        if (changeValue.isNotEmpty) {
          removeError(erros: kNameNullError);
        }
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(erros: kNameNullError);
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "FirstName",
        hintText: "Enter your FirstName",
        suffixIcon: CustomSuffixIcon(
          imagePath: "assets/icons/User.svg",
        ),
      ),
    );
  }
}
