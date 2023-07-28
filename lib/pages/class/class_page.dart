import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/ui/class_card_widget.dart';
import 'package:edu_learn_app/ui/header.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';

class ClassPage extends StatelessWidget {
  const ClassPage({super.key, required this.classCard});
  final ClassCardWidget classCard;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Header.backButton(),
        Text(
          classCard.title,
          style: fonts.pjs25BlackW700,
        ),
        const VGap(32),
        // Text(),
      ],
    );
  }
}
