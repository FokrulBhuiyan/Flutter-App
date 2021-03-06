import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecommendCards extends StatelessWidget {
  const RecommendCards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendCard(
            title: 'Samanrha',
            country: 'Russia',
            price: 400,
            img: 'assets/images/image_1.png',
            press: () {},
          ),
          RecommendCard(
            title: 'Samanrha',
            country: 'Russia',
            price: 400,
            img: 'assets/images/image_2.png',
            press: () {},
          ),
          RecommendCard(
            title: 'Samanrha',
            country: 'Russia',
            price: 400,
            img: 'assets/images/image_3.png',
            press: () {},
          ),
          SizedBox(
            width: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}

class RecommendCard extends StatelessWidget {
  const RecommendCard({
    Key key,
    @required this.title,
    @required this.price,
    @required this.country,
    @required this.img,
    @required this.press,
  }) : super(key: key);

  final String title, country, img;
  final int price;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 1.6,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(img),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding / 3,
                vertical: kDefaultPadding / 2,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    color: kPrimaryColor.withOpacity(0.2),
                    blurRadius: 40,
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '$title\n'.toUpperCase(),
                              style: Theme.of(context).textTheme.button.apply(
                                    color: Colors.black,
                                  ),
                            ),
                            TextSpan(
                              text: country.toUpperCase(),
                              style: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5),
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '\$$price',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
