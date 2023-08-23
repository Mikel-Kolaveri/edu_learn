import 'package:edu_learn_app/pages/class/src/sample_lecture_list.dart';
import 'package:edu_learn_app/pages/your_classes/src/my_button.dart';
import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/ui/button.dart';
import 'package:edu_learn_app/ui/class_card.dart';
import 'package:edu_learn_app/ui/header.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme/fonts.dart';
import '../../utils/assets.dart';
import '../class/src/benefits_samples.dart';
import '../class/src/class_video.dart';
import '../class/src/key_points_sample.dart';
import '../class/src/mentor_information.dart';
import '../class/src/mentor_social_button.dart';
import '../class/src/tools_required.dart';

// class EnrolledClassPage extends StatelessWidget {
//   const EnrolledClassPage({super.key, required this.classCard});
//   final ClassCard classCard;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: ListView(
//           padding: const EdgeInsets.all(16),
//           children: [
//             const Header.backButton(),
//             const GapV(32),
//             const ButtonRow(),
//             const GapV(24),
//             Text(
//               classCard.title,
//               style: fonts.pjs25BlackW700,
//               // textAlign: TextAlign.center,
//             ),
//             const GapV(32),
//             Text(
//               classCard.subTitle,
//               style: fonts.pjs20BlackW700,
//             ),
//             const GapV(16),
//             ClassVideo(subTitle: classCard.subTitle),
//             const GapV(24),
//             Text.rich(
//               TextSpan(
//                 text: '${classCard.lessonCount} lessons ',
//                 style: fonts.pjs10GreyHintW500,
//                 children: [TextSpan(text: '(${classCard.totalClassTime})')],
//               ),
//             ),
//             const GapV(16),
//             ...SampleLectureList.clickableList,
//             // ...SampleLectureList.clickableList
//             const GapV(16),
//             Button(
//               text: 'Get certificate',
//               onTap: () {},
//               color: colors.greyDot,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

class EnrolledClassPage extends ConsumerWidget {
  const EnrolledClassPage({super.key, required this.classCard});
  final ClassCard classCard;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toggleSwitch = ref.watch(toggleWidgetsProvider);
    const keyPoints = KeyPointsSample.list;
    const benefits = BenefitSamples.list;

    final List<Widget> list1 = [
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
      const GapV(16),
      ...SampleLectureList.clickableList,
      const GapV(16),
      Button(
        text: 'Get certificate',
        onTap: () {},
        color: colors.greyDot,
      )
    ];

    final List<Widget> list2 = [
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
    ];

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Header.backButton(),
            const GapV(32),
            const ButtonRow(),
            const GapV(24),
            Text(
              classCard.title,
              style: fonts.pjs25BlackW700,
            ),
            const GapV(32),
            Visibility(
                visible: toggleSwitch,
                replacement: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: list2,
                ),
                child: Column(
                  children: list1,
                )),
          ],
        ),
      ),
    );
  }
}
