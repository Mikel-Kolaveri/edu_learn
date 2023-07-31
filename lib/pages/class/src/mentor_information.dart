import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';

class MentorInformation extends StatelessWidget {
  const MentorInformation(
      {super.key,
      this.image,
      required this.name,
      required this.occupation,
      this.workPlace});
  final ImageProvider? image;
  final String name;
  final String occupation;
  final String? workPlace;

  @override
  Widget build(BuildContext context) {
    // TODO: Link this into the ClassCard class logic
    var workPlaceText = const TextSpan(text: '');
    if (workPlace != null) {
      workPlaceText = TextSpan(
          text: 'at ',
          children: [TextSpan(text: workPlace, style: fonts.pjs13OrangeW400)]);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              // image: DecorationImage(image: image, fit: BoxFit.scaleDown),
              color: colors.greyText,
              shape: BoxShape.circle),
        ),
        const GapV(16),
        Text(
          name,
          style: fonts.pjs13BlackW700,
        ),
        const GapV(8),
        Text.rich(
          TextSpan(
            style: fonts.pjs13BlackW400,
            text: '$occupation ',
            children: [
              workPlaceText
              // TextSpan(text: occupation, style: fonts.pjs13BlackW400),
            ],
          ),
        )
      ],
    );
  }
}
