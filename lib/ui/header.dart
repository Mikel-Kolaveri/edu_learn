import 'package:edu_learn_app/routing/routes.dart';
import 'package:edu_learn_app/utils/assets.dart';
import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

enum _Type { signin, signup, backButton, home, empty }

class Header extends ConsumerWidget {
  final _Type _type;
  final VoidCallback? onTap;
  const Header.signin({
    super.key,
    required this.onTap,
  }) : _type = _Type.signin;

  const Header.signup({
    super.key,
    required this.onTap,
  }) : _type = _Type.signup;

  const Header.home({
    super.key,
    required this.onTap,
  }) : _type = _Type.home;

  const Header.backButton({
    super.key,
  })  : _type = _Type.backButton,
        onTap = null;
  const Header.empty({
    super.key,
  })  : _type = _Type.empty,
        onTap = null;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String text = '';
    var font = fonts.pjs25BlackW700;
    switch (_type) {
      case _Type.signin:
        {
          text = 'Sign in';
        }

      case _Type.signup:
        {
          text = 'Sign up';
        }

      case _Type.backButton:
        {}
      case _Type.home:
        {
          text = '';
          font = fonts.pjs25WhiteW700;
        }
      case _Type.empty:
        {}
    }

    final logo = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(Assets.logo),
        const GapH(8),
        Text('EduLearn', style: font),
      ],
    );

    final trailing = _type == _Type.home
        ? Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xFFFCD695)),
            child: SvgPicture.asset(
              Assets.notificationsIcon,
              height: 20,
              width: 20,
            ))
        : GestureDetector(
            onTap: onTap,
            child: Text(
              text,
              style: fonts.pjs20OrangeW700,
            ),
          );

    final headerWithTrailing = [logo, const Spacer(), trailing];

    var backButtonHeader = [
      GestureDetector(
        onTap: () => context.go(Routes.home),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: colors.greyBorder),
          ),
          child: SvgPicture.asset(
            Assets.backIcon,
            height: 16,
            width: 16,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      logo
    ];

    Widget header = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
          _type == _Type.backButton ? backButtonHeader : headerWithTrailing,
      // children: _type == _Type.backButton ? authHeader : backButtonHeader,
    );

    if (_type == _Type.empty) {
      header = Center(child: logo);
    }

    return header;
  }
}
