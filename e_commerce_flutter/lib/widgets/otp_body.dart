import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';
import 'components/otp_form.dart';

class OtpBody extends StatelessWidget {
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
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                'OTP Verification',
                style: headingStyle,
              ),
              Text('We sent your code to +1 898 234 ***'),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              OtpForm(),
              SizedBox(height: getProportionateScreenHeight(60)),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Resend OTP Code',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('This code will expired in '),
        TweenAnimationBuilder(
          duration: Duration(seconds: 30),
          tween: Tween(begin: 30.0, end: 0),
          builder: (context, value, child) => Text(
            '00:${value.toInt()}',
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}
