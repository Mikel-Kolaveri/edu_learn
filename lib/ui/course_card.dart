import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/ui/button.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  const CourseCard(
      {super.key,
      required this.icon,
      required this.text,
      required this.classCount,
      required this.levelCount,
      required this.onButtonTap});
  final Widget icon;
  final String text;
  final int classCount;
  final int levelCount;
  final VoidCallback onButtonTap;

  @override
  Widget build(BuildContext context) {
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
            text,
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
                      '$classCount ${classCount == 1 ? 'Class' : 'Classes'}',
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
                    'Level $levelCount',
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
            onTap: onButtonTap,
          )
        ],
      ),
    );
  }
}
