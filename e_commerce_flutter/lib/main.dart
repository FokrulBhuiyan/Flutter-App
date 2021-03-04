import 'package:e_commerce_flutter/routes.dart';
import 'package:flutter/material.dart';

import './screens/splash_screen.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      // initialRoute: ProfileScreen.routeName,
      routes: routes,
    );
  }
}
