import 'package:edu_learn_app/theme/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../theme/colors.dart';

class EducationPicker extends ConsumerStatefulWidget {
  const EducationPicker({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EducationPickerState();
}

class _EducationPickerState extends ConsumerState<EducationPicker> {
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(color: colors.greyBorder),
      borderRadius: const BorderRadius.all(
        Radius.circular(15),
      ),
    );

    return DropdownMenu(
      trailingIcon: const Icon(Icons.keyboard_arrow_down_rounded),
      textStyle: fonts.pjs16BlackW500,
      menuStyle: const MenuStyle(
        elevation: MaterialStatePropertyAll(16),
      ),
      inputDecorationTheme: InputDecorationTheme(
          isCollapsed: true,
          enabledBorder: border,
          hintStyle: fonts.pjs16GreyHintW500,
          border: border),
      hintText: 'Last Education',
      width: MediaQuery.of(context).size.width - 32,
      leadingIcon: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 16),
        child: Icon(
          Icons.school_outlined,
          color: colors.greyText,
        ),
      ),
      dropdownMenuEntries: const [
        DropdownMenuEntry(value: '0', label: 'High School Degree'),
        DropdownMenuEntry(value: '1', label: "Bachelor's Degree"),
        DropdownMenuEntry(value: '2', label: "Master's Degree"),
        DropdownMenuEntry(value: '3', label: "PhD(Doctorate)"),
      ],
    );
  }
}
