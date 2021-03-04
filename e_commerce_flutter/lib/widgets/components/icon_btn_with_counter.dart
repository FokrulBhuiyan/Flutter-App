import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../../size_config.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key key,
    @required this.svgSrc,
    this.numOfItems = 0,
    @required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(40),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            padding: EdgeInsets.all(
              getProportionateScreenWidth(10),
            ),
            height: getProportionateScreenHeight(50),
            width: getProportionateScreenWidth(50),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if (numOfItems != 0)
            Positioned(
              top: -2,
              right: 0,
              child: Container(
                height: getProportionateScreenHeight(20),
                width: getProportionateScreenWidth(20),
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1.5,
                    color: Colors.white,
                  ),
                ),
                child: Center(
                  child: Text(
                    '$numOfItems',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(10),
                      height: 1,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
