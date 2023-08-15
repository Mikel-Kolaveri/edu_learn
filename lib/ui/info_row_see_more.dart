import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../theme/fonts.dart';

class InfoRowSeeMore extends StatelessWidget {
  const InfoRowSeeMore({super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final font16BlackW700 = fonts.pjs16BlackW700;
    final font16OrangeW700 = fonts.pjs16OrangeW700;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: font16BlackW700,
        ),
        Text.rich(
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onTap,
            text: 'See more',
          ),
          style: font16OrangeW700,
        ),
      ],
    );
  }
}
