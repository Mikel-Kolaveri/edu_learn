import 'package:edu_learn_app/pages/auth/src/divider_text.dart';
import 'package:edu_learn_app/pages/auth/src/forgot_password.dart';
import 'package:edu_learn_app/pages/auth/src/social_auth_button.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/ui/auth_textfield.dart';
import 'package:edu_learn_app/ui/button.dart';
import 'package:edu_learn_app/ui/header.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Header.signin(
          onTap: () {},
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
          isPassword: true,
          hintText: 'Password',
        ),
        const VGap(24),
        Align(
            alignment: Alignment.centerRight,
            child: ForgotPasswordText(onTap: () {})),
        const VGap(40),
        Button(
          text: 'Log in',
          onTap: () {},
        ),
        const VGap(48),
        const DividerText(),
        const VGap(24),
        SocialAuthButton(
          onTap: () {},
        ),
        const VGap(24),
        SocialAuthButton(
          onTap: () {},
        ),
      ],
    );
  }
}
