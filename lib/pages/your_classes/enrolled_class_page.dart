import 'package:edu_learn_app/pages/class/src/sample_lecture_list.dart';
import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/ui/button.dart';
import 'package:edu_learn_app/ui/class_card.dart';
import 'package:edu_learn_app/ui/header.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';

import '../../theme/fonts.dart';
import '../class/src/class_video.dart';

class EnrolledClassPage extends StatelessWidget {
  const EnrolledClassPage({super.key, required this.classCard});
  final ClassCard classCard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Header.backButton(),
            const GapV(32),
            // Row(
            //   children: [
            //     Expanded(
            //       flex: 11,
            //       child: MyButton(
            //         text: 'Subject matter',
            //         onSelect: () {},
            //       ),
            //     ),
            //     const Expanded(
            //       flex: 2,
            //       child: SizedBox(),
            //     ),
            //     Expanded(
            //       flex: 11,
            //       child: MyButton(
            //         text: 'Subject matter',
            //         onSelect: () {},
            //       ),
            //     )
            //   ],
            // ),
            const GapV(24),
            Text(
              classCard.title,
              style: fonts.pjs25BlackW700,
              // textAlign: TextAlign.center,
            ),
            const GapV(32),
            Text(
              classCard.subTitle,
              style: fonts.pjs20BlackW700,
            ),
            const GapV(16),
            ClassVideo(subTitle: classCard.subTitle),
            const GapV(24),
            Text.rich(
              TextSpan(
                text: '${classCard.lessonCount} lessons ',
                style: fonts.pjs10GreyHintW500,
                children: [TextSpan(text: '(${classCard.totalClassTime})')],
              ),
            ),
            const GapV(24),
            ...SampleLectureList.clickableList,
            // ...SampleLectureList.clickableList
            const GapV(16),
            Button(
              text: 'Get certificate',
              onTap: () {},
              color: colors.greyDot,
            )
          ],
        ),
      ),
    );
  }
}
