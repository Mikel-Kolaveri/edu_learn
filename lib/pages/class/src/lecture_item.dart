import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/utils/assets.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LectureItem extends StatelessWidget {
  const LectureItem(
      {super.key, required this.lectureNumber, required this.onTap});
  final int lectureNumber;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: GestureDetector(
          onTap: onTap,
          child: DecoratedBox(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
                border: Border.all(color: colors.greyBorder, width: 0.5)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: Row(
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colors.orangeHighOpacity),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(Assets.leacturePlayIcon),
                    ),
                  ),
                  const GapH(16),
                  Text(
                    'Lecture $lectureNumber',
                    style: fonts.pjs13BlackW500,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
