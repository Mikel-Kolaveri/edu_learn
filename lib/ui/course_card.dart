import 'package:edu_learn_app/routing/routes.dart';
import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/ui/button.dart';
import 'package:edu_learn_app/ui/class_card.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../utils/providers.dart';

class CourseCard extends ConsumerWidget {
  const CourseCard({super.key, required this.icon, required this.classCard});
  final Widget icon; //TODO: change later

  final ClassCard classCard;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lessonsCount = classCard.lessonCount;
    final classLevel = classCard.classLevel;
    final classLevelContainerDecoration = BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: colors.greyContainer);
    return Container(
      width: 180,
      height: 232,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: colors.greyBorder, width: 0.5),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          icon,
          const GapV(24),
          Text(
            classCard.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: fonts.pjs13BlackW700,
          ),
          const GapV(24),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: classLevelContainerDecoration,
                  padding: const EdgeInsets.all(8),
                  child: Text(
                      textAlign: TextAlign.center,
                      '$lessonsCount ${lessonsCount == 1 ? 'Class' : 'Classes'}',
                      style: fonts.pjs10GreyW700),
                ),
              ),
              const GapH(8),
              Expanded(
                child: Container(
                  decoration: classLevelContainerDecoration,
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Level $classLevel',
                    style: fonts.pjs10GreyW700,
                  ),
                ),
              ),
            ],
          ),
          const GapV(24),
          Button(
            borderRadius: 10,
            padding: const EdgeInsets.all(8),
            text: 'Start journey',
            textStyle: fonts.pjs10WhiteW700,
            onTap: () {
              ref.watch(classCardProvider.notifier).state = classCard;
              context.go(Routes.classPage);
            },
          )
        ],
      ),
    );
  }
}
