import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';
import '../../screens/sign_up_screen.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have any account? ',
          style: TextStyle(fontSize: getProportionateScreenWidth(15)),
        ),
        GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(SignUpScreen.routeName),
          child: Text(
            'Sign Up',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(15),
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
