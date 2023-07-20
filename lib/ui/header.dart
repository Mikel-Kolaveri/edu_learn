import 'package:edu_learn_app/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends ConsumerWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logo = SvgPicture.asset(Assets.logo);
    return Row(
      children: [logo],
    );
  }
}
