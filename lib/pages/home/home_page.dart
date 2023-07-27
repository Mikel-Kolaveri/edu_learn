import 'package:edu_learn_app/pages/home/src/categories_list.dart';
import 'package:edu_learn_app/pages/home/src/home_header.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final font16BlackW700 = fonts.pjs16BlackW700;
    final font16OrangeW700 = fonts.pjs16OrangeW700;
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const HomeHeader(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VGap(16),
              Text(
                'Explore Categories',
                style: fonts.pjs16BlackW700,
              ),
              const VGap(32),
              const Align(alignment: Alignment.center, child: CategoriesList()),
              const VGap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Roadmap you might like',
                    style: font16BlackW700,
                  ),
                  Text(
                    'See more',
                    style: font16OrangeW700,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
