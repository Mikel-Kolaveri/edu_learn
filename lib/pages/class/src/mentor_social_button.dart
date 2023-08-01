import 'package:flutter/material.dart';

class MentorSocialButton extends StatelessWidget {
  const MentorSocialButton(
      {super.key, required this.onTap, required this.icon});
  final VoidCallback onTap;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 24,
        width: 24,
        child: icon,
      ),
    );
  }
}
