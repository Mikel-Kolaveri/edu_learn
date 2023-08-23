import 'package:edu_learn_app/pages/home/src/learning_category_widget.dart';
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
        LearningCategoyWidget(
          categoryModel: LearningCategoryModel(
              category: 'Design',
              icon: SvgPicture.asset(Assets.categoryIconDesign)),
        ),
        LearningCategoyWidget(
          categoryModel: LearningCategoryModel(
              category: 'Programming',
              icon: SvgPicture.asset(Assets.categoryIconProgramming)),
        ),
        LearningCategoyWidget(
          categoryModel: LearningCategoryModel(
              category: 'Finance',
              icon: SvgPicture.asset(Assets.categoryIconFinance)),
        ),
        LearningCategoyWidget(
          categoryModel: LearningCategoryModel(
              category: 'Soft Skills',
              icon: SvgPicture.asset(Assets.categoryIconSoftSkills)),
        ),
        LearningCategoyWidget(
          categoryModel: LearningCategoryModel(
              category: 'Accountancy',
              icon: SvgPicture.asset(Assets.categoryIconAccountancy)),
        ),
        LearningCategoyWidget(
          categoryModel: LearningCategoryModel(
              category: 'Data Science',
              icon: SvgPicture.asset(Assets.categoryIconDataScience)),
        ),
        LearningCategoyWidget(
          categoryModel: LearningCategoryModel(
              category: 'Languages',
              icon: SvgPicture.asset(Assets.categoryIconLanguages)),
        ),
        LearningCategoyWidget(
          categoryModel: LearningCategoryModel(
              category: 'Marketing',
              icon: SvgPicture.asset(Assets.categoryIconMarketing)),
        ),
      ],
    );
  }
}
