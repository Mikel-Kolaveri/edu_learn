import 'package:edu_learn_app/utils/assets.dart';
import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum _Type { facebook, google }

class SocialAuthButton extends ConsumerWidget {
  const SocialAuthButton.facebook(
      {super.key, this.isSignUpButton = false, required this.onTap})
      : _type = _Type.facebook;
  const SocialAuthButton.google(
      {super.key, this.isSignUpButton = false, required this.onTap})
      : _type = _Type.google;

  /// The text is changable to sign up by setting isSignUpButton to true
  final bool? isSignUpButton;
  final VoidCallback onTap;
  final _Type _type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String logo;
    final double height;

    if (_type == _Type.facebook) {
      logo = Assets.facebookLogo;
      height = 20;
    } else {
      logo = Assets.googleLogo;
      height = 24;
    }

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
            ),
            const HGap(16),
            SizedBox(
              width: 100,
              child: SvgPicture.asset(
                logo,
                height: height,
                fit: BoxFit.scaleDown,
              ),
            )
          ],
        ),
      ),
    );
  }
}
