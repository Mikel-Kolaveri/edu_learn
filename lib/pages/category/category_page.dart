// ignore_for_file: avoid_print

import 'package:edu_learn_app/pages/category/src/dropdown_menu.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/ui/header.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:edu_learn_app/utils/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../ui/info_row_see_more.dart';
import '../home/src/content_lists/freemium_class_list.dart';
import '../home/src/content_lists/pupular_class_list.dart';
import '../home/src/content_lists/roadmap_cards_list.dart';

class CategoryPage extends ConsumerStatefulWidget {
  const CategoryPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CategoryPageState();
}

class _CategoryPageState extends ConsumerState<CategoryPage> {
  Values filterValue = Values.all;
  List<Widget> content = [
    const GapV(24),
    const FreemiumClassList(),
  ];
  @override
  Widget build(BuildContext context) {
    final categoryModel = ref.watch(categoryModelProvider)!;
    String text = '';
    void filter() {
      switch (filterValue) {
        case Values.all:
          content = [
            addPadding(
              InfoRowSeeMore(
                text: 'Roadmap you might like',
                onTap: () {},
              ),
            ),
            const GapV(24),
            const RoadmapCardsList(),
            const GapV(40),
            addPadding(
              InfoRowSeeMore(
                text: 'Freemium class',
                onTap: () {},
              ),
            ),
            const GapV(24),
            const FreemiumClassList(),
            const GapV(40),
            addPadding(
              InfoRowSeeMore(
                text: 'Popular class',
                onTap: () {},
              ),
            ),
            const GapV(24),
            const PopularClassList(),
          ];
          break;
        case Values.roadmap:
          content = [
            const GapV(24),
            const RoadmapCardsList(),
          ];
          text = 'Roadmap';
          break;
        case Values.premium:
          content = [
            const GapV(24),
            const FreemiumClassList(),
          ];
          text = 'Premium';
          break;
        case Values.popular:
          content = [
            const GapV(24),
            const PopularClassList(),
          ];
          text = 'Popular';
          break;
        case Values.freemium:
          content = [
            const GapV(24),
            const FreemiumClassList(),
          ];
          text = 'Freemium';
          break;
        default:
      }
    }

    filter();

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 24),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const Header.backButton(),
                  const GapV(36),
                  Row(
                    children: [
                      Text(
                        categoryModel.category,
                        style: fonts.pjs25BlackW700,
                      ),
                      const GapH(16),
                      SizedBox(
                          height: 24, width: 24, child: categoryModel.icon),
                      const Spacer(),
                      FilterMenu(
                        (value) {
                          filterValue = value;
                          setState(() {
                            filter();
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const GapV(36),
            if (filterValue != Values.all) ...[
              const GapH(16),
              addPadding(
                Text(
                  text,
                  style: fonts.pjs16BlackW700,
                ),
              ),
            ],
            ...content,
          ],
        ),
      ),
    );
  }
}
