import 'package:flutter/material.dart';

import '../widgets/forgot_password_body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const routeName = '/forgot_password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: ForgotPasswordBody(),
    );
  }
}
