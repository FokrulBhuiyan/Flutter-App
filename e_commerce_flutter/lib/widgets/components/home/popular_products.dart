import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'product_card.dart';
import 'section_title.dart';
import '../../../models/Product.dart';
import '../../../screens/details_screen.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular product",
          press: () {},
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                  press: () => Navigator.of(context).pushNamed(
                    DetailsScreen.routeName,
                    arguments:
                        ProductDetailsArguments(product: demoProducts[index]),
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
