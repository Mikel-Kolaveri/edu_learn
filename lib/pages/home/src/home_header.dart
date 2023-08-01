import 'package:edu_learn_app/pages/home/src/search_textfield.dart';
import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../ui/header.dart';

class HomeHeader extends ConsumerStatefulWidget {
  const HomeHeader({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UserProfileState();
}

class _UserProfileState extends ConsumerState<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    final orange = colors.orange;
    return Column(
      children: [
        Container(
          // height: 253,
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [orange.withOpacity(0.5), orange],
              stops: const [0.1576, 1.0],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header.home(
                onTap: () {},
              ),
              const GapV(24),
              Text(
                'Hello User!',
                style: fonts.pjs20WhiteW700,
              ),
              const GapV(8),
              Text(
                'Find the class or field you like here',
                style: fonts.pjs16WhiteW500,
              ),
              const GapV(24),
              const SearchTextField()
            ],
          ),
        ),
      ],
    );
  }
}
