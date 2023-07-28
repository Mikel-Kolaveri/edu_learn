import 'package:edu_learn_app/ui/class_card.dart';
import 'package:edu_learn_app/utils/padded_listview.dart';
import 'package:flutter/material.dart';

import '../../../../utils/assets.dart';

class PopularClassList extends StatelessWidget {
  const PopularClassList({super.key});

  @override
  Widget build(BuildContext context) {
    final list = [
      ClassCard(
          image:
              Image.asset(Assets.classImageDigitalMarketing, fit: BoxFit.cover),
          title: 'Digital Marketing for beginners',
          price: 'Free',
          ratings: 1125),
      ClassCard(
          image: Image.asset(Assets.classImageBecomeACopywriter),
          title: 'Become a Copywriter',
          price: '\$5',
          ratings: 780),
      ClassCard(
          image: Image.asset(Assets.classImageSEOForBeginners),
          title: 'SEO for beginners',
          price: '\$8',
          ratings: 905),
      ClassCard(
          image: Image.asset(Assets.classImageGoogleAdsForBeginners),
          title: 'Google Ads for beginners',
          price: '\$8',
          ratings: 1000),
    ];
    return PaddedListViewBuilder(height: 188, children: list);
  }
}
