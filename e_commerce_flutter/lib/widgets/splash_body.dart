import 'package:flutter/material.dart';

import '../constants.dart';
import 'components/default_button.dart';
import 'components/splash_content.dart';
import '../screens/sign_in_screen.dart';

class SplashBody extends StatefulWidget {
  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  int currentIndex = 0;
  List<Map<String, String>> splashData = [
    {
      "text": 'Welcome to MyZest, Let\'s shop!',
      "image": "assets/images/splash_1.png",
    },
    {
      "text": 'Collect your choice anytime!',
      "image": "assets/images/splash_2.png",
    },
    {
      "text": 'Easy way to shop & surprise!',
      "image": "assets/images/splash_3.png",
    },
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
                    currentIndex = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                    text: splashData[index]["text"],
                    image: splashData[index]["image"]),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    DefaultButton(
                      text: 'Continue',
                      press: () {
                        Navigator.of(context).pushNamed(SignInScreen.routeName);
                      },
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

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(
        right: 5,
      ),
      height: 6,
      width: currentIndex == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentIndex == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
