import 'package:edu_learn_app/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../assets.dart';
import '../../theme/colors.dart';
import '../../theme/fonts.dart';
import '../../ui/button.dart';
import '../../utils/gap.dart';

final _pageIndexProvider = StateProvider<int>((ref) {
  return 0;
});

class Onboarding extends ConsumerStatefulWidget {
  const Onboarding({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OnboardingState();
}

class _OnboardingState extends ConsumerState<Onboarding> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);
    final pageIndex = ref.watch(_pageIndexProvider);

    Future<void> skipOnboardingScreen() async {
      final prefs = await SharedPreferences.getInstance();
      setState(() {
        prefs.setBool('skipOnboarding', true);
      });
    }

    void onNextTap() {
      controller.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    }

    final carouselIndicator = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            3,
            (index) => Container(
                  height: 10,
                  width: 10,
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          pageIndex == index ? colors.orange : colors.greyDot),
                ))
      ],
    );

    final skipButton = GestureDetector(
        onTap: () {
          context.go(Routes.signup);
          skipOnboardingScreen();
        },
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(8),
            width: double.infinity,
            child: Text(
              textAlign: TextAlign.center,
              'Skip',
              style: fonts.pjs20GreyW500,
            ),
          ),
        ));

    final buttonRow = Row(
      children: [
        Flexible(child: skipButton),
        const HGap(16),
        Flexible(
          child: Button(
            text: 'Next',
            onTap: onNextTap,
            trailing: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 20,
            ),
          ),
        )
      ],
    );

    final buttonList = [
      buttonRow,
      buttonRow,
      Button(
          text: 'Start',
          onTap: () {
            context.go(Routes.signup);
            skipOnboardingScreen();
          })
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: controller,
              itemCount: 3,
              onPageChanged: (value) {
                ref.watch(_pageIndexProvider.notifier).state = value;
              },
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: _backgroundList[index], fit: BoxFit.fill),
                  ),
                  child: CustomScrollView(
                    slivers: [
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 310, child: _images[index]),
                              const VGap(16),
                              Column(
                                children: [
                                  Text(
                                    _headingTexts[index],
                                    style: fonts.pjs25OrangeW700,
                                    textAlign: TextAlign.center,
                                  ),
                                  const VGap(16),
                                  Text(
                                    _descriptionTexts[index],
                                    style: fonts.pjs16GreyW400,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              buttonList[index]
                            ]),
                      )
                    ],
                  ),
                );
              },
            ),
            Positioned(bottom: 96, left: 0, right: 0, child: carouselIndicator),
          ],
        ),
      ),
    );
  }
}

final _backgroundList = [
  AssetImage(Assets.onboardingBackground1),
  AssetImage(Assets.onboardingBackground2),
  AssetImage(Assets.onboardingBackground3),
];

final _images = [
  Image.asset(Assets.onboardingImage1),
  Image.asset(Assets.onboardingImage2),
  Image.asset(Assets.onboardingImage3),
];

final _headingTexts = [
  'Find a field that you like',
  'Start your journey',
  'You can be anything, the world is in your hands'
];

final _descriptionTexts = [
  'There are many fields that you can find here, and you can learn all of them',
  'You can start your journey in the field you love, no need to be afraid of getting lost, we will help you reach the finish line',
  'By learning & increasing knowledge you will become a wise person and can change things around you and even the world'
];
