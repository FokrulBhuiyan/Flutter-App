import 'package:e_commerce_flutter/enum.dart';
import 'package:e_commerce_flutter/widgets/components/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
