import 'package:edu_learn_app/pages/auth/src/divider_text.dart';
import 'package:edu_learn_app/pages/auth/src/forgot_password.dart';
import 'package:edu_learn_app/pages/auth/src/social_auth_button.dart';
import 'package:edu_learn_app/pages/auth/src/terms_conditions_privacy.dart';
import 'package:edu_learn_app/routing/routes.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/ui/auth_textfield.dart';
import 'package:edu_learn_app/ui/button.dart';
import 'package:edu_learn_app/ui/header.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

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
                Header.signup(
                  onTap: () {
                    context.go(Routes.signup);
                  },
                ),
                const VGap(16),
                Text(
                  'Welcome Back!',
                  style: fonts.pjs25OrangeW700,
                  textAlign: TextAlign.center,
                ),
                const VGap(16),
                Text(
                  'Nice to see you back, you can log in and continue your learning progress',
                  style: fonts.pjs16GreyW400.copyWith(height: 1.5),
                  textAlign: TextAlign.center,
                ),
                const VGap(32),
                AuthTextField(
                  icon: Icons.email_outlined,
                  controller: TextEditingController(),
                  hintText: 'Email',
                ),
                const VGap(24),
                AuthTextField(
                  icon: Icons.lock_outline_rounded,
                  controller: TextEditingController(),
                  isPasswordField: true,
                  hintText: 'Password',
                ),
                const VGap(24),
                Align(
                    alignment: Alignment.centerRight,
                    child: ForgotPasswordText(onTap: () {})),
                const VGap(40),
                const Spacer(),
                const TermsConditionsPrivacyPolicyText.signin(),
                const VGap(24),
                Button(
                  text: 'Log in',
                  onTap: () {
                    context.go(Routes.home);
                  },
                ),
                const VGap(48),
                const DividerText(),
                const VGap(24),
                SocialAuthButton.facebook(
                  onTap: () {},
                ),
                const VGap(24),
                SocialAuthButton.google(
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
