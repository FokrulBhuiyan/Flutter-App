import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';
import 'components/complete_profile_form.dart';

class CompleteProfileBody extends StatelessWidget {
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
              Text(
                'Complete Profile',
                style: headingStyle,
              ),
              Text(
                'Complete Your details or continue \nwith social media.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenHeight(30)),
              CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(30)),
              Text(
                'By continuing your confirm that you agree \nwith our Terms and Conditions',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
