import 'package:e_commerce_ui/components/default_button.dart';
import 'package:e_commerce_ui/components/form_error.dart';
import 'package:e_commerce_ui/components/sufix_icons.dart';
import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/screens/complete_profile/complete_profile_screen.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class SignUpTextFormField extends StatefulWidget {
  @override
  _SignUpTextFormFieldState createState() => _SignUpTextFormFieldState();
}

class _SignUpTextFormFieldState extends State<SignUpTextFormField> {
  final formKey = GlobalKey<FormState>();
  String email;
  String password;
  String confirmPassword;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildEmailTextFormField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildPasswordField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildConfrimPasswordField(),
            FormError(errors: errors),
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            DefaultButton(
              text: "SignUp",
              onpress: () {
                if (formKey.currentState.validate()) {
                  Navigator.pushNamed(context, CompleteProfileScreen.routeName);
                }
              },
            ),
          ],
        ));
  }

  TextFormField buildEmailTextFormField() {
    return TextFormField(
      onSaved: (savedValue) => email = savedValue,
      onChanged: (changeValue) {
        if (changeValue.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
          return "";
        } else if (emailValidationRegExp.hasMatch(changeValue) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        } else if (!emailValidationRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your mail",
        suffixIcon: CustomSuffixIcon(
          imagePath: "assets/icons/Mail.svg",
        ),
      ),
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      onChanged: (changeValue) {
        if (changeValue.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
          return "";
        } else if (changeValue.length >= 8 &&
            errors.contains(kshortPassError)) {
          setState(() {
            errors.remove(kshortPassError);
          });
          return "";
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        } else if (value.length < 8 && !errors.contains(kshortPassError)) {
          setState(() {
            errors.add(kshortPassError);
          });
        }
        return null;
      },
      onSaved: (savedValue) => password = savedValue,
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        suffixIcon: CustomSuffixIcon(
          imagePath: "assets/icons/Lock.svg",
        ),
      ),
    );
  }

  TextFormField buildConfrimPasswordField() {
    return TextFormField(
      onChanged: (changeValue) {
        if (changeValue.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
          return "";
        } else if (password != changeValue) {
          setState(() {
            errors.remove(kshortPassError);
          });
          return "";
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        } else if (password == confirmPassword) {
          setState(() {
            errors.add(kMatchPassError);
          });
        }
        return null;
      },
      onSaved: (savedValue) => confirmPassword = savedValue,
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Confrim Password",
        hintText: "Re Enter your password",
        suffixIcon: CustomSuffixIcon(
          imagePath: "assets/icons/Lock.svg",
        ),
      ),
    );
  }
}
