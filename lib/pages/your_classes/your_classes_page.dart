import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/ui/header.dart';
import 'package:edu_learn_app/ui/your_class/your_class_widget.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/cupertino.dart';

import '../../ui/class_card.dart';
import '../../utils/assets.dart';

class YourClassesPage extends StatelessWidget {
  const YourClassesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Header.empty(),
        const GapV(32),
        Text(
          'Your classes',
          style: fonts.pjs25BlackW700,
        ),
        const GapV(24),
        YourClassWidget(
          classCard: ClassCard(
            classLevel: 'Beginner',
            image: Image.asset(Assets.classImageDigitalMarketing,
                fit: BoxFit.cover),
            title: 'Digital Marketing for beginners',
            subTitle: 'Sample subtitle',
            price: 0,
            ratings: 1125,
            lessonCount: 10,
            totalClassTime: '10 hours',
            classDescription:
                'This class is an early stage to learn more about Application'
                'History, when the application was first created, by who the creator was, and '
                'why the application was created to the development of the application today.',
          ),
        )
      ],
    );
  }
}
