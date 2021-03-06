import 'package:flutter/material.dart';

import 'components/home/feature_cards.dart';
import 'components/home/header_with_search_box.dart';
import 'components/home/recommend_cards.dart';
import 'components/home/title_with_more_btn.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            text: 'Featured Plants',
            press: () {},
          ),
          FeatureCards(),
          TitleWithMoreBtn(
            text: 'Recommended',
            press: () {},
          ),
          RecommendCards(),
        ],
      ),
    );
  }
}
