import 'package:flutter/material.dart';

import 'package:e_commerce_flutter/size_config.dart';
import 'components/home/categories.dart';
import 'components/home/discount_banner.dart';
import 'components/home/home_header.dart';
import 'components/home/popular_products.dart';
import 'components/home/special_offers_card.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(20)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenHeight(20)),
            Categories(),
            SizedBox(height: getProportionateScreenHeight(20)),
            SpecialOffersCard(),
            SizedBox(height: getProportionateScreenHeight(20)),
            PopularProducts(),
          ],
        ),
      ),
    );
  }
}
