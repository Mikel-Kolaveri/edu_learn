import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/utils/assets.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum _Type {
  clickable,
}

class LectureItem extends StatefulWidget {
  const LectureItem.clickable({super.key, required this.lectureNumber})
      : __type = _Type.clickable;
  const LectureItem({super.key, required this.lectureNumber}) : __type = null;
  final int lectureNumber;

  final _Type? __type;

  @override
  State<LectureItem> createState() => _LectureItemState();
}

class _LectureItemState extends State<LectureItem> {
  bool isWatched = false;

  @override
  Widget build(BuildContext context) {
    final orangeHighOpacity = colors.orange.withAlpha(130);
    Widget current = SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: isWatched ? orangeHighOpacity : Colors.transparent,
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              border: Border.all(
                  color: isWatched ? colors.orange : colors.greyBorder,
                  width: 1)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Row(
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isWatched ? Colors.white : orangeHighOpacity),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 20,
                        child: isWatched
                            ? Image.asset(Assets.tickIcon)
                            : SvgPicture.asset(Assets.leacturePlayIcon),
                      )),
                ),
                const GapH(16),
                Text(
                  'Lecture ${widget.lectureNumber}',
                  style:
                      isWatched ? fonts.pjs13WhiteW500 : fonts.pjs13BlackW700,
                ),
              ],
            ),
          ),
        ),
      ),
    );

    if (widget.__type == _Type.clickable) {
      return GestureDetector(
          onTap: () => setState(() {
                isWatched = true;
              }),
          child: current);
    } else {
      return current;
    }
  }
}
