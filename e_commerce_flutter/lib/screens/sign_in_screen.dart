import 'package:flutter/material.dart';
import '../widgets/sign_in_body.dart';

class SignInScreen extends StatelessWidget {
  static const routeName = '/sign_in';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In",),
      ),
      body: SignInBody(),
    );
  }
}
