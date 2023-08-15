// ignore_for_file: avoid_print

import 'package:edu_learn_app/pages/category/src/dropdown_menu.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/ui/header.dart';
import 'package:edu_learn_app/utils/assets.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
  @override
  Widget build(BuildContext context) {
    Widget addPadding(Widget text) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: text,
        );
    void test() {
      switch (filterValue) {
        case Values.all:
          print('1');
          break;
        case Values.roadmap:
          print('2');
          break;
        case Values.premium:
          print('3');
          break;
        case Values.popular:
          print('4');
          break;
        case Values.freemium:
          print('5');
          break;
        default:
      }
    }

    return ListView(
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
                    'Category name',
                    style: fonts.pjs25BlackW700,
                  ),
                  const GapH(16),
                  SvgPicture.asset(Assets.categoryPageDesignIcon),
                  const Spacer(),
                  FilterMenu(
                    (value) {
                      filterValue = value;
                      test();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        const GapV(36),
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
      ],
    );
  }
}
