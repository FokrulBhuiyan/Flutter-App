import 'package:flutter/material.dart';

import '../widgets/otp_body.dart';

class OtpScreen extends StatelessWidget {
  static const routeName = '/otp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: OtpBody(),
    );
  }
}
