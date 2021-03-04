import 'package:e_commerce_flutter/models/Product.dart';
import 'package:flutter/cupertino.dart';

class Cart {
  final Product product;
  final int numOfItems;

  Cart({@required this.product, @required this.numOfItems});
}

List<Cart> demoCarts = [
  Cart(product: demoProducts[0], numOfItems: 2),
  Cart(product: demoProducts[1], numOfItems: 1),
  Cart(product: demoProducts[3], numOfItems: 1),
];

double get totalPrice {
  var total = 0.0;
  demoCarts.forEach((element) {
    total += element.product.price * element.numOfItems;
  });
  return total;
}
