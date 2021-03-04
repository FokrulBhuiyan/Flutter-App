import 'package:e_commerce_flutter/widgets/login_success_body.dart';
import 'package:flutter/material.dart';

class LoginSuccessScreen extends StatelessWidget {
  static const routeName = '/login_success';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text('Login Success'),
      ),
      body: LoginSuccessBody(),
    );
  }
}
