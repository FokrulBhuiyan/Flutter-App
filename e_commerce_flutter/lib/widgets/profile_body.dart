import 'package:e_commerce_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/profile/profile_menu.dart';
import 'components/profile/profile_picture.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfilePicture(),
          SizedBox(height: 20),
          ProfileMenu(
            icon: 'assets/icons/User Icon.svg',
            text: 'My Account',
            press: () {},
          ),
          SizedBox(height: 1),
          ProfileMenu(
            icon: 'assets/icons/Bell.svg',
            text: 'Notifications',
            press: () {},
          ),
          ProfileMenu(
            icon: 'assets/icons/Settings.svg',
            text: 'Settings',
            press: () {},
          ),
          ProfileMenu(
            icon: 'assets/icons/Question mark.svg',
            text: 'Help Center',
            press: () {},
          ),
          ProfileMenu(
            icon: 'assets/icons/Log out.svg',
            text: 'Log Out',
            press: () {},
          ),
        ],
      ),
    );
  }
}
