import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/ui/rating_row.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';

import 'class_card.dart';

class ClassCardWidget extends StatelessWidget {
  const ClassCardWidget({
    super.key,
    required this.classCard,
  });

  final ClassCard classCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 188,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: colors.greyBorder, width: 0.5),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: SizedBox(
              height: 68, width: double.infinity, child: classCard.image),
        ),
        const GapV(8),
        Text(
          classCard.title,
          style: fonts.pjs13GreyW700,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const GapV(8),
        const Spacer(),
        Text(
          classCard.price == 0 ? 'Free' : '${classCard.price.toInt()}\$',
          style: fonts.pjs10BlackW400,
        ),
        const GapV(16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const RatingRow(),
              const GapH(8),
              Text(
                '(${classCard.ratings})',
                style: fonts.pjs10BlackW500,
              )
            ],
          ),
        ),
      ]),
    );
  }
}
