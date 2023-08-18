import 'package:edu_learn_app/routing/routes.dart';
import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class NavBar extends ConsumerStatefulWidget {
  const NavBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NavBarState();
}

final _destinationList = [
  Routes.home,
  Routes.samplePage,
  Routes.yourClassPage,
  Routes.samplePage
];

class _NavBarState extends ConsumerState<NavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // index == 0 ? context.go(Routes.home) : context.go('/home/class_page');
      context.go(_destinationList[index]);
      // index == 2 ? context.go(Ro)
    });
  }

  @override
  Widget build(BuildContext context) {
    int index = _selectedIndex;
    return Container(
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: colors.greyHintText, blurRadius: 5)]),
      child: BottomNavigationBar(
        selectedItemColor: colors.orange,
        unselectedItemColor: colors.greyHintText,
        enableFeedback: false,
        unselectedLabelStyle: fonts.pjs10GreyHintW700,
        selectedLabelStyle: fonts.pjs10OrangeW700,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SvgPicture.asset(
                Assets.navbarHomeIcon,
                colorFilter: ColorFilter.mode(
                    index == 0 ? colors.orange : colors.greyHintText,
                    BlendMode.srcIn),
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SvgPicture.asset(
                Assets.navbarEventIcon,
                colorFilter: ColorFilter.mode(
                    index == 1 ? colors.orange : colors.greyHintText,
                    BlendMode.srcIn),
              ),
            ),
            label: 'Event',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SvgPicture.asset(
                Assets.navbarClassIcon,
                colorFilter: ColorFilter.mode(
                    index == 2 ? colors.orange : colors.greyHintText,
                    BlendMode.srcIn),
              ),
            ),
            label: 'Class',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SvgPicture.asset(
                Assets.navbarProfileIcon,
                colorFilter: ColorFilter.mode(
                    index == 3 ? colors.orange : colors.greyHintText,
                    BlendMode.srcIn),
              ),
            ),
            label: 'Profile',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
