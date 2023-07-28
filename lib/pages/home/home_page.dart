import 'package:edu_learn_app/pages/home/src/content_lists/categories_list.dart';
import 'package:edu_learn_app/pages/home/src/content_lists/freemium_class_list.dart';
import 'package:edu_learn_app/pages/home/src/content_lists/pupular_class_list.dart';
import 'package:edu_learn_app/pages/home/src/content_lists/roadmap_cards_list.dart';
import 'package:edu_learn_app/pages/home/src/home_header.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/ui/info_row_see_more.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeHeader(),
              const VGap(16),
              Text(
                'Explore Categories',
                style: fonts.pjs16BlackW700,
              ),
              const VGap(32),
              const Align(alignment: Alignment.center, child: CategoriesList()),
              const VGap(40),
            ],
          ),
        ),
        InfoRowSeeMore(
          text: 'Roadmap you might like',
          onTap: () {},
        ),
        const VGap(24),
        const RoadmapCardsList(),
        const VGap(40),
        InfoRowSeeMore(
          text: 'Freemium class',
          onTap: () {},
        ),
        const VGap(24),
        const FreemiumClassList(),
        const VGap(40),
        InfoRowSeeMore(
          text: 'Popular class',
          onTap: () {},
        ),
        const VGap(24),
        const PopularClassList()
      ],
    );
  }
}
