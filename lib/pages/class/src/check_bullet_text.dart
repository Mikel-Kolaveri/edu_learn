import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/utils/assets.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckBulletText extends StatelessWidget {
  const CheckBulletText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          SvgPicture.asset(Assets.checkmarkIcon),
          const GapH(16),
          Expanded(
            child: Text(
              text,
              style: fonts.pjs16BlackW500.copyWith(height: 1.4),
            ),
          )
        ],
      ),
    );
  }
}
