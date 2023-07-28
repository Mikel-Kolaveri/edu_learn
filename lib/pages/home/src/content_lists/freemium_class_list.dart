import 'package:edu_learn_app/ui/class_card_widget.dart';
import 'package:edu_learn_app/utils/assets.dart';
import 'package:edu_learn_app/utils/padded_listview.dart';
import 'package:flutter/material.dart';

class FreemiumClassList extends StatelessWidget {
  const FreemiumClassList({super.key});

  @override
  Widget build(BuildContext context) {
    final cardList = [
      ClassCardWidget(
          image:
              Image.asset(Assets.classImageDigitalMarketing, fit: BoxFit.cover),
          title: 'Digital Marketing for beginners',
          price: 'Free',
          ratings: 1125),
      ClassCardWidget(
          image: Image.asset(Assets.classImageEnglishForFreelancers,
              fit: BoxFit.cover),
          title: 'English for Freelancer: Interview & work pr...',
          price: 'Free',
          ratings: 1200),
      ClassCardWidget(
          image: Image.asset(Assets.classImageUiUxDesignPrinciples,
              fit: BoxFit.cover),
          title: 'UI/UX Design Principles',
          price: 'Free',
          ratings: 1556),
      ClassCardWidget(
          image: Image.asset(Assets.classImageBasicHtml, fit: BoxFit.cover),
          title: 'Basic HTML',
          price: 'Free',
          ratings: 905)
    ];
    return PaddedListViewBuilder(
      height: 188,
      children: cardList,
    );
  }
}
