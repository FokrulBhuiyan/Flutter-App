import 'package:flutter/material.dart';

import '../size_config.dart';
import '../widgets/components/default_button.dart';
import '../screens/home_screen.dart';

class LoginSuccessBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(30)),
            Image.asset(
              'assets/images/success.png',
              height: SizeConfig.screenHeight * 0.5,
            ),
            SizedBox(height: getProportionateScreenHeight(40)),
            Text(
              'Login Success',
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(30),
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: getProportionateScreenHeight(50),
            ),
            SizedBox(
              width: SizeConfig.screenWidth * 0.6,
              child: DefaultButton(
                text: 'Back to home',
                press: () =>
                    Navigator.of(context).pushNamed(HomeScreen.routeName),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
