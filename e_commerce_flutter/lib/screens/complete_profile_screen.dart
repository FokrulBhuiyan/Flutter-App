import 'package:flutter/material.dart';

import '../widgets/complete_Profile_body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static const routeName = '/complete_profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: CompleteProfileBody(),
    );
  }
}
