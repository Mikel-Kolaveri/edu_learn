import 'package:edu_learn_app/ui/class_card.dart';
import 'package:edu_learn_app/ui/class_card_widget.dart';
import 'package:edu_learn_app/utils/padded_listview.dart';
import 'package:flutter/material.dart';

import '../../../../utils/assets.dart';

class PopularClassList extends StatelessWidget {
  const PopularClassList({super.key});

  @override
  Widget build(BuildContext context) {
    final list = [
      ClassCardWidget(
        classCard: ClassCard(
            classLevel: 'Beginner',
            image: Image.asset(Assets.classImageDigitalMarketing,
                fit: BoxFit.cover),
            title: 'Digital Marketing for beginners',
            price: 0,
            ratings: 1125,
            subTitle: 'Sample subtitle',
            lessonCount: 10,
            totalClassTime: '10 hours',
            classDescription:
                'This class is an early stage to learn more about Application'
                'History, when the application was first created, by who the creator was, and '
                'why the application was created to the development of the application today.'),
      ),
      ClassCardWidget(
        classCard: ClassCard(
            classLevel: 'Beginner',
            image: Image.asset(Assets.classImageBecomeACopywriter),
            title: 'Become a Copywriter',
            price: 5,
            ratings: 780,
            subTitle: 'Sample subtitle',
            lessonCount: 10,
            totalClassTime: '10 hours',
            classDescription:
                'This class is an early stage to learn more about Application'
                'History, when the application was first created, by who the creator was, and '
                'why the application was created to the development of the application today.'),
      ),
      ClassCardWidget(
        classCard: ClassCard(
            classLevel: 'Beginner',
            image: Image.asset(Assets.classImageSEOForBeginners),
            title: 'SEO for beginners',
            price: 8,
            ratings: 905,
            subTitle: 'Sample subtitle',
            lessonCount: 10,
            totalClassTime: '10 hours',
            classDescription:
                'This class is an early stage to learn more about Application'
                'History, when the application was first created, by who the creator was, and '
                'why the application was created to the development of the application today.'),
      ),
      ClassCardWidget(
        classCard: ClassCard(
            classLevel: 'Beginner',
            image: Image.asset(Assets.classImageGoogleAdsForBeginners),
            title: 'Google Ads for beginners',
            price: 8,
            ratings: 1000,
            subTitle: 'Sample subtitle',
            lessonCount: 10,
            totalClassTime: '10 hours',
            classDescription:
                'This class is an early stage to learn more about Application'
                'History, when the application was first created, by who the creator was, and '
                'why the application was created to the development of the application today.'),
      ),
    ];
    return PaddedListViewBuilder(height: 188, children: list);
  }
}
