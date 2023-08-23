// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/utils/assets.dart';
import 'package:edu_learn_app/utils/gap.dart';

class SampleLectureList {
  static final list = List.generate(
    5,
    (index) => LectureItem(
      lectureNumber: index + 1,
    ),
  );

  static List<LectureItem> clickableList(VoidCallback onTap) {
    return List.generate(
      5,
      (index) => LectureItem.clickable(
        lectureNumber: index + 1,
        watchedTracker: WatchedTracker(isWatched: false),
        onTap: onTap,
      ),
    );
  }

  // static final clickableList = List.generate(
  //   5,
  //   (index) => LectureItem.clickable(
  //     lectureNumber: index + 1,
  //     watchedTracker: WatchedTracker(isWatched: false),
  //   ),
  // );
}

enum _Type {
  clickable,
}

class LectureItem extends StatefulWidget {
  const LectureItem({
    super.key,
    required this.lectureNumber,
  })  : __type = null,
        watchedTracker = null,
        onTap = null;
  const LectureItem.clickable(
      {super.key,
      required this.lectureNumber,
      required this.watchedTracker,
      required this.onTap})
      : __type = _Type.clickable;

  final int lectureNumber;
  final WatchedTracker? watchedTracker;
  final _Type? __type;
  final VoidCallback? onTap;

  @override
  State<LectureItem> createState() => _LectureItemState();
}

class _LectureItemState extends State<LectureItem> {
  // bool isWatched = false;

  @override
  Widget build(BuildContext context) {
    bool isWatched = widget.watchedTracker!.isWatched;
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
                widget.watchedTracker!.isWatched = true;
              }),
          child: current);
    } else {
      return current;
    }
  }
}

class WatchedTracker {
  WatchedTracker({
    required this.isWatched,
  });
  bool isWatched;
}
