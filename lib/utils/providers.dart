import 'package:edu_learn_app/pages/home/src/learning_category_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../ui/class_card.dart';

final classCardProvider = StateProvider<ClassCard?>((ref) {
  return null;
});

final categoryModelProvider = StateProvider<LearningCategoryModel?>((ref) {
  return null;
});
