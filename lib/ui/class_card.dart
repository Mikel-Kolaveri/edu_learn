import 'package:flutter/material.dart';

class ClassCard {
  const ClassCard(
      {required this.image,
      required this.title,
      required this.price,
      required this.ratings,
      required this.lessonCount,
      required this.subTitle,
      required this.totalClassTime,
      required this.classDescription});
  final Widget image;
  final String title;
  final String subTitle;
  final double price;
  final int ratings;
  final int lessonCount;
  final String totalClassTime;
  final String classDescription;
}
