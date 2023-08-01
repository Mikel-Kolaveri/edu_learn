import 'package:edu_learn_app/pages/auth/src/birthday_picker.dart';
import 'package:edu_learn_app/pages/auth/src/divider_text.dart';
import 'package:edu_learn_app/pages/auth/src/education_picker.dart';
import 'package:edu_learn_app/pages/auth/src/social_auth_button.dart';
import 'package:edu_learn_app/pages/auth/src/terms_conditions_privacy.dart';
import 'package:edu_learn_app/routing/routes.dart';
import 'package:edu_learn_app/ui/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../theme/fonts.dart';
import '../../ui/auth_textfield.dart';
import '../../ui/button.dart';
import '../../utils/gap.dart';

class SignUpPage extends ConsumerWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 32),
            child: Column(
              children: [
                Header.signin(
                  onTap: () {
                    context.go(Routes.signin);
                  },
                ),
                const GapV(16),
                Text(
                  'Sign up',
                  style: fonts.pjs25OrangeW700,
                  textAlign: TextAlign.center,
                ),
                const GapV(16),
                Text(
                  'The point of your journey together is here, start registering now',
                  style: fonts.pjs16GreyW400.copyWith(height: 1.5),
                  textAlign: TextAlign.center,
                ),
                const GapV(32),
                AuthTextField(
                  icon: Icons.person_3_outlined,
                  controller: TextEditingController(),
                  hintText: 'Full name',
                ),
                const GapV(24),
                const EducationPicker(),
                const GapV(24),
                const BirthdayPicker(),
                const GapV(24),
                AuthTextField(
                  icon: Icons.email_outlined,
                  controller: TextEditingController(),
                  hintText: 'Email',
                ),
                const GapV(24),
                AuthTextField(
                  icon: Icons.phone_outlined,
                  controller: TextEditingController(),
                  hintText: 'Phone number',
                  keyboardType: TextInputType.phone,
                ),
                const GapV(24),
                AuthTextField(
                  icon: Icons.lock_outline_rounded,
                  controller: TextEditingController(),
                  isPasswordField: true,
                  hintText: 'Password',
                ),
                const GapV(24),
                AuthTextField(
                  icon: Icons.lock_outline_rounded,
                  controller: TextEditingController(),
                  isPasswordField: true,
                  hintText: 'Repeat Password',
                ),
                const GapV(24),
                const TermsConditionsPrivacyPolicyText.signup(),
                const GapV(40),
                const Spacer(),
                Button(
                  text: 'Create a ccount',
                  onTap: () {
                    context.go(Routes.home);
                  },
                ),
                const GapV(48),
                const DividerText(),
                const GapV(24),
                SocialAuthButton.facebook(
                  isSignUpButton: true,
                  onTap: () {},
                ),
                const GapV(24),
                SocialAuthButton.google(
                  isSignUpButton: true,
                  onTap: () {},
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
