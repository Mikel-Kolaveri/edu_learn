import 'package:edu_learn_app/routing/routes.dart';
import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../class_card.dart';

class YourClassWidget extends StatelessWidget {
  const YourClassWidget({super.key, required this.classCard});

  final ClassCard classCard;

  @override
  Widget build(BuildContext context) {
    final card = classCard;
    return GestureDetector(
      onTap: () {
        context.push(Routes.enrolledClassPage);
      },
      child: Container(
        height: 124,
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: colors.greyBorder)),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SizedBox(
                  height: double.infinity, width: 160, child: card.image),
            ),
            const GapH(12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Application History in the World',
                    style: fonts.pjs13BlackW500.copyWith(height: 1.3),
                  ),
                  const GapV(8),
                  Text(
                    card.classLevel,
                    style: fonts.pjs13GreyHintW700,
                  ),
                  const GapV(8),
                  const Spacer(),
                  Text(
                    '5/10',
                    style: fonts.pjs10GreyHintW500,
                  ),
                  const GapV(4),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: LinearProgressIndicator(
                            backgroundColor: colors.greyDot,
                            // color: colors.orange,
                            minHeight: 10,
                            value: 5 / 10,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(colors.orange),
                          ),
                        ),
                      ),
                      const GapH(8),
                      Text(
                        '50%',
                        style: fonts.pjs10GreyHintW500,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
