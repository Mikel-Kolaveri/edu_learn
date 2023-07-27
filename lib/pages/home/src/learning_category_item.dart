import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';

class LearningCategoyItem extends StatelessWidget {
  const LearningCategoyItem(
      {super.key,
      required this.text,
      required this.icon,
      this.height,
      this.width,
      required this.onTap});
  final VoidCallback onTap;
  final String text;
  final Widget icon;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            color: colors.greyCategoryIcon,
            padding: const EdgeInsets.all(20),
            child: SizedBox(height: height, width: width, child: icon),
          ),
        ),
        const VGap(8),
        Text(
          text,
          style: fonts.pjs10BlackW700,
        )
      ],
    );
  }
}
