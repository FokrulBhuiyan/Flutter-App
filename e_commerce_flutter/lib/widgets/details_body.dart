import 'package:e_commerce_flutter/constants.dart';
import 'package:e_commerce_flutter/size_config.dart';
import 'package:e_commerce_flutter/widgets/components/default_button.dart';
import 'package:e_commerce_flutter/widgets/components/details/rounded_icon_btn.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce_flutter/models/Product.dart';
import 'components/details/color_dots.dart';
import 'components/details/product_description.dart';
import 'components/details/product_images.dart';
import 'components/details/top_rounded_container.dart';

class DetailsBody extends StatelessWidget {
  final Product product;

  const DetailsBody({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: ListView(
            
            children: [
              Column(
                children: [
                  ProductDescription(
                    product: product,
                    pressOnseeMore: () {},
                  ),
                  TopRoundedContainer(
                    color: Color(0xFFF6F7F9),
                    child: Column(
                      children: [
                        ColorDots(product: product),
                        Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.15,
                            right: SizeConfig.screenWidth * 0.15,
                          ),
                          child: Container(
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(
                              vertical: getProportionateScreenHeight(30),
                            ),
                            child: DefaultButton(
                              text: "Add to Cart",
                              press: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
