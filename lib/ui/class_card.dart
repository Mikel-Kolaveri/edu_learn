import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/utils/assets.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClassCard extends StatelessWidget {
  const ClassCard(
      {super.key,
      required this.image,
      required this.title,
      required this.price,
      required this.ratings});
  final Widget image;
  final String title;
  final String price;
  final int ratings;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 188,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: colors.greyborder, width: 0.5),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: SizedBox(height: 68, width: double.infinity, child: image),
        ),
        const VGap(8),
        Text(
          title,
          style: fonts.pjs13GreyW700,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const VGap(8),
        const Spacer(),
        Text(
          price,
          style: fonts.pjs10BlackW400,
        ),
        const VGap(16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const RatingRow(),
              const HGap(8),
              Text(
                '($ratings)',
                style: fonts.pjs10BlackW500,
              )
            ],
          ),
        ),
      ]),
    );
  }
}

class RatingRow extends ConsumerWidget {
  const RatingRow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        SvgPicture.asset(Assets.ratingStarIcon),
        SvgPicture.asset(Assets.ratingStarIcon),
        SvgPicture.asset(Assets.ratingStarIcon),
        SvgPicture.asset(Assets.ratingStarIcon),
        SvgPicture.asset(
          Assets.ratingStarIcon,
          colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
        ),
      ],
    );
  }
}
