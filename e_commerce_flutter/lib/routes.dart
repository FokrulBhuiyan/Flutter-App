import 'package:flutter/widgets.dart';

import './screens/splash_screen.dart';
import './screens/sign_in_screen.dart';
import './screens/forgot_password_screen.dart';
import './screens/login_success_screen.dart';
import './screens/sign_up_screen.dart';
import './screens/complete_profile_screen.dart';
import './screens/otp_screen.dart';
import './screens/home_screen.dart';
import './screens/details_screen.dart';
import 'screens/cart_screen.dart';
import './screens/profile_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
