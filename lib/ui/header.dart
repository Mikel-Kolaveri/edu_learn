import 'package:edu_learn_app/assets.dart';
import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum _Type { signin, signup, backButton }

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

  const Header.backButton({
    super.key,
  })  : _type = _Type.backButton,
        onTap = null;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String text = '';
    final logo = Row(
      children: [
        SvgPicture.asset(Assets.logo),
        const HGap(8),
        Text(
          'EduLearn',
          style: fonts.pjs25BlackW700,
        ),
      ],
    );

    //final authHeader =
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
    }

    final authHeader = [
      logo,
      const Spacer(),
      GestureDetector(
        onTap: onTap,
        child: Text(
          text,
          style: fonts.pjs20OrangeW700,
        ),
      ),
    ];

    final backButtonHeader = [
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: colors.greyborder),
        ),
        child: SvgPicture.asset(
          Assets.backIcon,
          height: 16,
          width: 16,
          fit: BoxFit.scaleDown,
        ),
      ),
      logo
    ];

    Widget test = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: _type == _Type.backButton ? backButtonHeader : authHeader,
      // children: _type == _Type.backButton ? authHeader : backButtonHeader,
    );
    return test;
  }
}
