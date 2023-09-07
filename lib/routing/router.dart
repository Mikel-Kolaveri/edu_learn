import 'package:edu_learn_app/pages/category/category_page.dart';
import 'package:edu_learn_app/pages/class/class_page.dart';
import 'package:edu_learn_app/pages/home/home_page.dart';
import 'package:edu_learn_app/pages/onboarding/onboarding.dart';
import 'package:edu_learn_app/pages/auth/signin_page.dart';
import 'package:edu_learn_app/pages/auth/signup_page.dart';
import 'package:edu_learn_app/pages/your_classes/your_classes_page.dart';
import 'package:edu_learn_app/ui/navbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/payment_page.dart';
import '../pages/sample_page.dart';
import '../pages/thank_you_page.dart';
import '../pages/your_classes/your_class_page.dart';

bool skipOnboardingScreen = false;
final shellkey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: shellkey,
  initialLocation: skipOnboardingScreen ? '/signin' : null,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Onboarding(),
    ),
    ShellRoute(
        // parentNavigatorKey: shellkey,
        builder: (context, state, child) => GestureDetector(
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              child: Scaffold(
                body: SafeArea(child: child),
              ),
            ),
        routes: [
          GoRoute(
            path: '/signin',
            builder: (context, state) => const SignInPage(),
          ),
          GoRoute(
            path: '/signup',
            builder: (context, state) => const SignUpPage(),
          ),
        ]),
    ShellRoute(
        builder: (context, state, child) => GestureDetector(
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              child: Scaffold(
                body: SafeArea(child: child),
                bottomNavigationBar: const NavBar(),
              ),
            ),
        routes: [
          GoRoute(
              path: '/home',
              builder: (context, state) => const HomePage(),
              routes: [
                GoRoute(
                    parentNavigatorKey: shellkey,
                    path: 'class_page',
                    builder: (context, state) => const ClassPage()),
                GoRoute(
                  path: 'your_class_page',
                  builder: (context, state) => const YourClassesPage(),
                ),
                GoRoute(
                  // parentNavigatorKey: shellkey,
                  path: 'sample_page',
                  builder: (context, state) => const SamplePage(),
                ),
              ]),
        ]),
    GoRoute(
      path: '/enrolled_class_page',
      builder: (context, state) => const EnrolledClassPage(),
    ),
    ShellRoute(
        navigatorKey: shellkey,
        // parentNavigatorKey: shellkey,
        builder: (context, state, child) {
          return Scaffold(
            body: SafeArea(child: child),
          );
        },
        routes: [
          GoRoute(
            parentNavigatorKey: shellkey,
            path: '/cateogory_page',
            builder: (context, state) => const CategoryPage(),
          )
        ]),
    ShellRoute(
        navigatorKey: shellkey,
        builder: (context, state, child) {
          return Scaffold(
            body: SafeArea(child: child),
          );
        },
        routes: [
          GoRoute(
              parentNavigatorKey: shellkey,
              path: '/payment_page',
              builder: (context, state) => const PaymentPage(),
              routes: [
                GoRoute(
                  parentNavigatorKey: shellkey,
                  path: 'thank_you_page',
                  builder: (context, state) => const ThankYouPage(),
                )
              ]),
        ]),
  ],
);
