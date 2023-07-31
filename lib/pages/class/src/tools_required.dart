import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';

class ToolRequiredWidget extends StatelessWidget {
  const ToolRequiredWidget(
      {super.key, required this.image, required this.label});
  final Widget image;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Column(
        children: [
          image,
          const GapV(16),
          Text(
            label,
            style: fonts.pjs13BlackW500,
          )
        ],
      ),
    );
  }
}
