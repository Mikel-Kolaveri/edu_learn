import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:flutter/material.dart';

class DividerText extends StatelessWidget {
  const DividerText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: colors.greyText,
            thickness: 1.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48.0),
          child: Text(
            'Or',
            style: fonts.pjs16GreyW500,
          ),
        ),
        Expanded(
          child: Divider(
            color: colors.greyText,
            thickness: 1.5,
          ),
        ),
      ],
    );
  }
}
