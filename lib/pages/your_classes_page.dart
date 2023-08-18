import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/ui/header.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/cupertino.dart';

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
        )
      ],
    );
  }
}
