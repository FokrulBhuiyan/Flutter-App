import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_now/widget/components/bottom_nav_bar.dart';
import 'package:plant_now/widget/home_body.dart';

class HomeScreen extends StatelessWidget {
  // static const routeName ="/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/menu.svg'),
          onPressed: () {},
        ),
      ),
      body: HomeBody(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
