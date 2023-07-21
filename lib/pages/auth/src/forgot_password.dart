// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ForgotPasswordText extends ConsumerWidget {
  const ForgotPasswordText({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        'Forgot Password?',
        style: fonts.pjs13GreyW500,
        // textAlign: TextAlign.end,
      ),
    );
  }
}
