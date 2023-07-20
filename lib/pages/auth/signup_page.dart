import 'package:edu_learn_app/ui/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpPage extends ConsumerWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Header.signup(
          onTap: () {},
        ),
        const Text('Sign Up Page')
      ],
    );
  }
}
