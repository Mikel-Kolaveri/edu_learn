import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../theme/colors.dart';
import '../../../theme/fonts.dart';

final birthdayProvider = StateProvider<DateTime?>((ref) {
  return null;
});

class BirthdayPicker extends ConsumerStatefulWidget {
  const BirthdayPicker({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BirthdayPickerState();
}

class _BirthdayPickerState extends ConsumerState<BirthdayPicker> {
  @override
  Widget build(BuildContext context) {
    final birthday = ref.watch(birthdayProvider);

    Future<void> selectDate(BuildContext context) async {
      final DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900, 1),
          lastDate: DateTime.now());

      if (pickedDate != null && pickedDate != DateTime.now()) {
        ref.watch(birthdayProvider.notifier).state = pickedDate;
      }
    }

    return GestureDetector(
      onTap: () {
        selectDate(context);
      },
      child: Container(
        height: 59,
        decoration: BoxDecoration(
            border: Border.all(color: colors.greyborder),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 16),
              child:
                  Icon(Icons.calendar_month_outlined, color: colors.greyText),
            ),
            Text(
              birthday == null ? 'Age' : DateFormat.yMMMd().format(birthday),
              style: birthday == null
                  ? fonts.pjs16GreyHintW500
                  : fonts.pjs16BlackW500,
            ),
          ],
        ),
      ),
    );
  }
}
