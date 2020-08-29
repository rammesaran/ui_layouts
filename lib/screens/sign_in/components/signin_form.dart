import 'package:e_commerce_ui/components/default_button.dart';
import 'package:e_commerce_ui/components/form_error.dart';
import 'package:e_commerce_ui/components/sufix_icons.dart';
import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_ui/screens/login_success/login_success_screen.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class SignInFromField extends StatefulWidget {
  @override
  _SignInFromFieldState createState() => _SignInFromFieldState();
}

class _SignInFromFieldState extends State<SignInFromField> {
  final formKey = GlobalKey<FormState>();
  String email;
  String passWord;
  bool rememberMe = false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Row(
            children: [
              Checkbox(
                  activeColor: kPrimaryColor,
                  value: rememberMe,
                  onChanged: (value) {
                    setState(() {
                      rememberMe = value;
                    });
                  }),
              Text("Remeber Me"),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: Text(
                  "ForgotPassword",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          DefaultButton(
            text: "Continue",
            onpress: () {
              if (formKey.currentState.validate()) {
                formKey.currentState.save();

                Navigator.pushNamed(context, LoginSucessScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
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
      onSaved: (savedValue) => passWord = savedValue,
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

  TextFormField buildEmailFormField() {
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
}
