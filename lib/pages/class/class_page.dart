import 'package:edu_learn_app/pages/class/src/benefits_samples.dart';
import 'package:edu_learn_app/pages/class/src/class_video.dart';
import 'package:edu_learn_app/pages/class/src/key_points_sample.dart';
import 'package:edu_learn_app/pages/class/src/mentor_information.dart';
import 'package:edu_learn_app/pages/class/src/mentor_social_button.dart';
import 'package:edu_learn_app/pages/class/src/sample_lecture_list.dart';
import 'package:edu_learn_app/pages/class/src/tools_required.dart';
import 'package:edu_learn_app/routing/routes.dart';
import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/ui/button.dart';
import 'package:edu_learn_app/ui/class_card_widget.dart';
import 'package:edu_learn_app/ui/header.dart';
import 'package:edu_learn_app/utils/assets.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../ui/rating_row.dart';

class ClassPage extends StatelessWidget {
  const ClassPage({super.key, required this.classCardWidget});
  final ClassCardWidget classCardWidget;

  @override
  Widget build(BuildContext context) {
    final classCard = classCardWidget.classCard;
    const keyPoints = KeyPointsSample.list;
    const benefits = BenefitSamples.list;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
          children: [
            const Header.backButton(),
            const GapV(32),
            Text(
              classCard.title,
              style: fonts.pjs25BlackW700,
              textAlign: TextAlign.center,
            ),
            const GapV(32),
            Text(
              classCard.subTitle,
              style: fonts.pjs20BlackW700,
            ),
            const GapV(32),
            Text(
              classCard.price == 0
                  ? 'Free'
                  : '${classCard.price.floorToDouble()}\$',
              style: fonts.pjs20BlackW500,
            ),
            const GapV(16),
            Row(
              children: [
                const RatingRow(),
                const GapH(4),
                Text(
                  '(${classCard.ratings})',
                  style: fonts.pjs10BlackW500,
                )
              ],
            ),
            const GapV(32),
            Text(
              'Preview class',
              style: fonts.pjs13GreyHintW500,
            ),
            const GapV(8),
            ClassVideo(subTitle: classCard.subTitle),
            const GapV(16),
            Text(
              '${classCard.lessonCount} lessons '
              '(${classCard.totalClassTime})',
              style: fonts.pjs13GreyHintW500,
            ),
            const GapV(16),
            ...SampleLectureList.list,
            Button(
              text: classCard.price == 0
                  ? 'Enroll for Free'
                  : 'Buy class for ${classCard.price}\$',
              onTap: () {
                if (classCard.price == 0) {
                } else {
                  context.push(Routes.paymentPage);
                }
              },
            ),
            const GapV(24),
            Divider(
              color: colors.greyBorder,
            ),
            const GapV(24),
            Text(
              'Tools required',
              style: fonts.pjs16GreyHintW500,
            ),
            const GapV(16),
            Align(
              alignment: Alignment.centerLeft,
              child: ToolRequiredWidget(
                image: SvgPicture.asset(Assets.courseIconFigma),
                label: 'Figma',
              ),
            ),
            const GapV(48),
            Text(
              'About class',
              style: fonts.pjs16GreyHintW500,
            ),
            const GapV(16),
            Text(classCard.classDescription, style: fonts.pjs16BlackW500),
            const GapV(48),
            Text(
              'Key points',
              style: fonts.pjs16GreyHintW500,
            ),
            const GapV(24),
            ...keyPoints,
            const GapV(32),
            Text(
              'Benefit',
              style: fonts.pjs16GreyHintW500,
            ),
            const GapV(24),
            benefits,
            const GapV(24),
            Text(
              'Mentor class',
              style: fonts.pjs16GreyHintW500,
            ),
            const GapV(16),
            const MentorInformation(
              image: AssetImage(Assets.sampleMentorPicture),
              name: 'Jacob Jones',
              occupation: 'Sr. UI/UX Designer',
              workPlace: 'Malaka Company, SGP.',
            ),
            const GapV(32),
            Text(
              'Get in touch!',
              style: fonts.pjs10BlackW400,
            ),
            const GapV(16),
            Row(
              children: [
                MentorSocialButton(
                  onTap: () {},
                  icon: SvgPicture.asset(Assets.mentorSocialMediaIconInstagram),
                ),
                const GapH(8),
                MentorSocialButton(
                  onTap: () {},
                  icon: SvgPicture.asset(Assets.mentorSocialMediaIconTikTok),
                ),
                const GapH(8),
                MentorSocialButton(
                  onTap: () {},
                  icon: SvgPicture.asset(Assets.mentorSocialMediaIconYoutube),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
