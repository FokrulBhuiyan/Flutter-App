import 'package:flutter/material.dart';

import 'package:e_commerce_flutter/widgets/components/details/custom_app_bar.dart';
import '../models/Product.dart';
import 'package:e_commerce_flutter/widgets/details_body.dart';

class DetailsScreen extends StatelessWidget {
  static const routeName = '/details';
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(arguments.product.rating),
      body: DetailsBody(product: arguments.product,),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}
