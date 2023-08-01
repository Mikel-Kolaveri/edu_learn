import 'package:flutter/material.dart';

import 'gap.dart';

class PaddedListViewBuilder extends StatelessWidget {
  const PaddedListViewBuilder(
      {super.key, required this.height, required this.children});

  final double height;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    var paddedList = List.generate(children.length * 2,
        (index) => index.isEven ? children[index ~/ 2] : const GapH(16));

    paddedList.insert(0, const GapH(16));

    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => paddedList[index],
        itemCount: paddedList.length,
      ),
    );
  }
}
