import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SocialAuthButton extends ConsumerWidget {
  const SocialAuthButton(
      {super.key, this.isSignUpButton = false, required this.onTap});
  final bool? isSignUpButton;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 66,
        decoration: BoxDecoration(
          border: Border.all(color: colors.greyborder),
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isSignUpButton! ? 'Sign up with' : 'Sign in with',
              style: fonts.pjs16GreyHintW500,
            )
          ],
        ),
      ),
    );
  }
}
