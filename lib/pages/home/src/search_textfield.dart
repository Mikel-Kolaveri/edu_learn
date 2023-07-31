import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchTextField extends ConsumerStatefulWidget {
  const SearchTextField({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SearchTextFieldState();
}

class _SearchTextFieldState extends ConsumerState<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: fonts.pjs16BlackW500,
      decoration: InputDecoration(
        hintText: 'Find class',
        hintStyle: fonts.pjs16GreyHintW500,
        prefixIcon: Icon(
          Icons.search,
          color: colors.greyText,
          size: 24,
        ),
        suffixIcon:
            Icon(Icons.mic_none_outlined, color: colors.greyText, size: 24),
        fillColor: colors.white,
        filled: true,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          borderSide: BorderSide(style: BorderStyle.none, width: 0),
        ),
      ),
    );
  }
}
