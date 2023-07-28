import 'package:edu_learn_app/ui/course_card.dart';
import 'package:edu_learn_app/utils/assets.dart';
import 'package:edu_learn_app/utils/padded_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoadmapCardsList extends StatelessWidget {
  const RoadmapCardsList({super.key, this.padding});
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final roadMapcards = [
      CourseCard(
        icon: SvgPicture.asset(Assets.courseIconFigma),
        text: 'Mastering UI/UX Design',
        classCount: 12,
        levelCount: 3,
        onButtonTap: () {},
      ),
      CourseCard(
        icon: SvgPicture.asset(Assets.courseIconHTML5),
        text: 'Mastering HTML',
        classCount: 14,
        levelCount: 3,
        onButtonTap: () {},
      ),
      CourseCard(
        icon: SvgPicture.asset(Assets.courseIconCSS3),
        text: 'Mastering CSS',
        classCount: 15,
        levelCount: 3,
        onButtonTap: () {},
      ),
      CourseCard(
        icon: SvgPicture.asset(Assets.courseIconPython),
        text: 'Mastering Phyton',
        classCount: 15,
        levelCount: 3,
        onButtonTap: () {},
      ),
      CourseCard(
        icon: SvgPicture.asset(Assets.courseIconFlutter),
        text: 'Mastering Flutter',
        classCount: 13,
        levelCount: 3,
        onButtonTap: () {},
      ),
    ];
    return PaddedListViewBuilder(height: 232, children: roadMapcards);
  }
}
