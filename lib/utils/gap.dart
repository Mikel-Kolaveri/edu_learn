import 'package:flutter/material.dart';

class GapV extends StatelessWidget {
  const GapV(this.height, {super.key});
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}

class GapH extends StatelessWidget {
  const GapH(this.width, {super.key});

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}
