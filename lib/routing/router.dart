import 'package:edu_learn_app/pages/onboarding/onboarding.dart';
import 'package:edu_learn_app/pages/auth/signin_page.dart';
import 'package:edu_learn_app/pages/auth/signup_page.dart';
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
        builder: (context, state, child) => Scaffold(
              body: SafeArea(
                  child:
                      Padding(padding: const EdgeInsets.all(16), child: child)),
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
  ],
);
