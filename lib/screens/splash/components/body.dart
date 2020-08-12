import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/components/default_button.dart';
import 'package:e_commerce_ui/screens/splash/components/splash_content.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreenBody extends StatefulWidget {
  @override
  _SplashScreenBodyState createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  int currentPage = 0;
  List<Map<String, String>> data = [
    {
      "text": "welcome",
      "image": "assets/images/splash_1.png",
    },
    {
      "text": "ram",
      "image": "assets/images/splash_2.png",
    },
    {
      "text": "saram",
      "image": "assets/images/splash_3.png",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: data.length,
                itemBuilder: (context, index) => SplashScreenContent(
                  images: data[index]["image"],
                  text: data[index]["text"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20.0),
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        data.length,
                        (index) => getBottom(
                          index: index,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    DefaultButton(
                      text: "Register",
                      onpress: () {},
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer getBottom({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(
        right: 5,
      ),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3.0),
      ),
    );
  }
}
