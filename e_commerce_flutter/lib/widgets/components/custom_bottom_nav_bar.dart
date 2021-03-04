import 'package:e_commerce_flutter/screens/home_screen.dart';
import 'package:e_commerce_flutter/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../../enum.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);
  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.4),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/Shop Icon.svg',
                color: MenuState.home == selectedMenu
                    ? kPrimaryColor
                    : kSecondaryColor,
              ),
              onPressed: () =>
                  Navigator.popAndPushNamed(context, HomeScreen.routeName),
            ),
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/Heart Icon.svg',
                color: MenuState.favorite == selectedMenu
                    ? kPrimaryColor
                    : kSecondaryColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/Chat bubble Icon.svg',
                color: MenuState.message == selectedMenu
                    ? kPrimaryColor
                    : kSecondaryColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/User Icon.svg',
                color: MenuState.profile == selectedMenu
                    ? kPrimaryColor
                    : kSecondaryColor,
              ),
              onPressed: () =>
                  Navigator.pushNamed(context, ProfileScreen.routeName),
            ),
          ],
        ),
      ),
    );
  }
}
