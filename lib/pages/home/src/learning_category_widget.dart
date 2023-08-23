import 'package:edu_learn_app/routing/routes.dart';
import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:edu_learn_app/utils/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LearningCategoyWidget extends ConsumerWidget {
  const LearningCategoyWidget({super.key, required this.categoryModel});

  final LearningCategoryModel categoryModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            ref.watch(categoryModelProvider.notifier).state = categoryModel;
            context.push(Routes.categoryPage);
          },
          child: Container(
              color: colors.greyCategoryIcon,
              padding: const EdgeInsets.all(20),
              child: categoryModel.icon),
        ),
        const GapV(8),
        Text(
          categoryModel.category,
          style: fonts.pjs10BlackW700,
        )
      ],
    );
  }
}

class LearningCategoryModel {
  LearningCategoryModel({required this.category, required this.icon});
  final String category;
  final Widget icon;
}
