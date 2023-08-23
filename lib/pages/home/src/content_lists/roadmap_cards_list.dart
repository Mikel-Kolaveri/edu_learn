import 'package:edu_learn_app/ui/course_card.dart';
import 'package:edu_learn_app/utils/assets.dart';
import 'package:edu_learn_app/utils/padded_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../ui/class_card.dart';

class RoadmapCardsList extends StatelessWidget {
  const RoadmapCardsList({super.key, this.padding});
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final roadMapcards = [
      CourseCard(
        icon: SvgPicture.asset(Assets.courseIconFigma),
        classCard: ClassCard(
            classLevel: 1,
            image: Image.asset(Assets.classImageSEOForBeginners),
            title: 'Mastering UI/UX',
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
      CourseCard(
        icon: SvgPicture.asset(Assets.courseIconHTML5),
        classCard: ClassCard(
            classLevel: 1,
            image: Image.asset(Assets.classImageSEOForBeginners),
            title: 'Mastering HTML',
            price: 8,
            ratings: 905,
            subTitle: 'Sample subtitle',
            lessonCount: 13,
            totalClassTime: '10 hours',
            classDescription:
                'This class is an early stage to learn more about Application'
                'History, when the application was first created, by who the creator was, and '
                'why the application was created to the development of the application today.'),
      ),
      CourseCard(
        icon: SvgPicture.asset(Assets.courseIconCSS3),
        classCard: ClassCard(
            classLevel: 1,
            image: Image.asset(Assets.classImageSEOForBeginners),
            title: 'Mastering CSS',
            price: 8,
            ratings: 905,
            subTitle: 'Sample subtitle',
            lessonCount: 15,
            totalClassTime: '10 hours',
            classDescription:
                'This class is an early stage to learn more about Application'
                'History, when the application was first created, by who the creator was, and '
                'why the application was created to the development of the application today.'),
      ),
      CourseCard(
        icon: SvgPicture.asset(Assets.courseIconPython),
        classCard: ClassCard(
            classLevel: 1,
            image: Image.asset(Assets.classImageSEOForBeginners),
            title: 'Mastering Python',
            price: 8,
            ratings: 905,
            subTitle: 'Sample subtitle',
            lessonCount: 8,
            totalClassTime: '10 hours',
            classDescription:
                'This class is an early stage to learn more about Application'
                'History, when the application was first created, by who the creator was, and '
                'why the application was created to the development of the application today.'),
      ),
      CourseCard(
        icon: SvgPicture.asset(Assets.courseIconFlutter),
        classCard: ClassCard(
            classLevel: 1,
            image: Image.asset(Assets.classImageSEOForBeginners),
            title: 'Mastering Flutter',
            price: 8,
            ratings: 905,
            subTitle: 'Sample subtitle',
            lessonCount: 5,
            totalClassTime: '10 hours',
            classDescription:
                'This class is an early stage to learn more about Application'
                'History, when the application was first created, by who the creator was, and '
                'why the application was created to the development of the application today.'),
      ),
    ];
    return PaddedListViewBuilder(height: 232, children: roadMapcards);
  }
}
