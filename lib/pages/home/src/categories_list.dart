import 'package:edu_learn_app/pages/home/src/learning_category_item.dart';
import 'package:edu_learn_app/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      runSpacing: 32,
      spacing: 16,
      children: [
        LearningCategoyItem(
            onTap: () {},
            text: 'Design',
            icon: SvgPicture.asset(Assets.categoryIconDesign)),
        LearningCategoyItem(
            onTap: () {},
            text: 'Programmer',
            icon: SvgPicture.asset(Assets.categoryIconProgramming)),
        LearningCategoyItem(
            onTap: () {},
            text: 'Finance',
            icon: SvgPicture.asset(Assets.categoryIconFinance)),
        LearningCategoyItem(
            onTap: () {},
            text: 'Soft Skills',
            icon: SvgPicture.asset(Assets.categoryIconSoftSkills)),
        LearningCategoyItem(
            onTap: () {},
            text: 'Accountancy',
            icon: SvgPicture.asset(Assets.categoryIconAccountancy)),
        LearningCategoyItem(
            onTap: () {},
            text: 'Data Science',
            icon: SvgPicture.asset(Assets.categoryIconDataScience)),
        LearningCategoyItem(
            onTap: () {},
            text: 'Languages',
            icon: SvgPicture.asset(Assets.categoryIconLanguages)),
        LearningCategoyItem(
            onTap: () {},
            text: 'Marketing',
            icon: SvgPicture.asset(Assets.categoryIconMarketing)),
      ],
    );
  }
}
