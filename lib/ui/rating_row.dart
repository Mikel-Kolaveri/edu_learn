import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/assets.dart';

class RatingRow extends ConsumerWidget {
  const RatingRow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        ...List.generate(
          5,
          (index) => index == 4
              ? SvgPicture.asset(
                  Assets.ratingStarIcon,
                  colorFilter:
                      const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                )
              : Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: SvgPicture.asset(Assets.ratingStarIcon),
                ),
        ),
      ],
    );
  }
}
