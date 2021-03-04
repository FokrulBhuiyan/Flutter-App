import 'package:flutter/material.dart';

import 'package:e_commerce_flutter/widgets/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = "/sign_up";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: SignUpBody(),
    );
  }
}
