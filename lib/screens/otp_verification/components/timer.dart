import 'package:e_commerce_ui/constants.dart';
import 'package:flutter/material.dart';

Row buildTimer() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Code will expire in"),
      TweenAnimationBuilder(
          onEnd: () {},
          tween: Tween(
            begin: 30.0,
            end: 0,
          ),
          duration: Duration(
            seconds: 30,
          ),
          builder: (context, number, Widget widget) {
            return Text(
              '00: ${number.toInt()}',
              style: TextStyle(
                color: kPrimaryColor,
              ),
            );
          })
    ],
  );
}
