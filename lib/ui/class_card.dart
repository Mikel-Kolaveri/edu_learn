import 'package:flutter/material.dart';

class ClassCard {
  //TODO: use ClassCard on CLassCardWidget
  const ClassCard(
      {required this.image,
      required this.title,
      required this.price,
      required this.ratings});
  final Widget image;
  final String title;
  final String price;
  final int ratings;
}
