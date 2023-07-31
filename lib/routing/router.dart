import 'package:edu_learn_app/pages/home/home_page.dart';
import 'package:edu_learn_app/pages/onboarding/onboarding.dart';
import 'package:edu_learn_app/pages/auth/signin_page.dart';
import 'package:edu_learn_app/pages/auth/signup_page.dart';
import 'package:edu_learn_app/ui/navbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

bool skipOnboardingScreen = false;

final router = GoRouter(
  initialLocation: skipOnboardingScreen ? '/signin' : null,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Onboarding(),
    ),
    ShellRoute(
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
          ),
        ]),
  ],
);
