import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClassVideo extends ConsumerStatefulWidget {
  const ClassVideo({super.key, required this.subTitle});
  final String subTitle;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ClassVideoState();
}

class _ClassVideoState extends ConsumerState<ClassVideo> {
  @override
  Widget build(BuildContext context) {
    // TODO: Add a simple video that can be played by pressing the play button
    return Container(
      height: 200,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: colors.greyBorder),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Column(children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.subTitle,
            style: fonts.pjs13WhiteW500.copyWith(shadows: [
              const Shadow(
                color: Colors.black,
                blurRadius: 12,
              ),
            ]),
          ),
        )
      ]),
    );
  }
}
