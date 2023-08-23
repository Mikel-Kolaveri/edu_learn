import 'package:edu_learn_app/ui/class_card.dart';
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
        classCard: ClassCard(
          classLevel: 'Beginner',
          image:
              Image.asset(Assets.classImageDigitalMarketing, fit: BoxFit.cover),
          title: 'Digital Marketing for beginners',
          subTitle: 'Sample subtitle',
          price: 0,
          ratings: 1125,
          lessonCount: 10,
          totalClassTime: '10 hours',
          classDescription:
              'This class is an early stage to learn more about Application'
              'History, when the application was first created, by who the creator was, and '
              'why the application was created to the development of the application today.',
        ),
      ),
      ClassCardWidget(
        classCard: ClassCard(
            classLevel: 'Beginner',
            image: Image.asset(Assets.classImageEnglishForFreelancers,
                fit: BoxFit.cover),
            title: 'English for Freelancer: Interview & work pr...',
            subTitle: 'Sample subtitle',
            price: 0,
            ratings: 1200,
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
            image: Image.asset(Assets.classImageUiUxDesignPrinciples,
                fit: BoxFit.cover),
            title: 'UI/UX Design Principles',
            subTitle: 'Sample subtitle',
            price: 0,
            ratings: 1556,
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
            image: Image.asset(Assets.classImageBasicHtml, fit: BoxFit.cover),
            title: 'Basic HTML',
            subTitle: 'Sample subtitle',
            price: 0,
            ratings: 905,
            lessonCount: 10,
            totalClassTime: '10 hours',
            classDescription:
                'This class is an early stage to learn more about Application'
                'History, when the application was first created, by who the creator was, and '
                'why the application was created to the development of the application today.'),
      )
    ];
    return PaddedListViewBuilder(
      height: 188,
      children: cardList,
    );
  }
}
