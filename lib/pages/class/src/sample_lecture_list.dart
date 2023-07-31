import 'package:edu_learn_app/pages/class/src/lecture_item.dart';

class SampleLectureList {
  static final list = List.generate(
    5,
    (index) => LectureItem(
      lectureNumber: index + 1,
      onTap: () {},
    ),
  );
}
