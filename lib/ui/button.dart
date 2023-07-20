// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme/colors.dart';
import '../theme/fonts.dart';

class Button extends ConsumerWidget {
  const Button({
    super.key,
    this.padding,
    required this.text,
    this.width,
    this.trailing,
    required this.onTap,
  });

  final String text;
  final double? width;
  final Widget? trailing;
  final VoidCallback onTap;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: colors.orange,
            borderRadius: const BorderRadius.all(Radius.circular(15))),
        padding: padding ??
            const EdgeInsets.all(
                14), //TODO: maybe check with height instead od padding
        width: width ?? double.infinity,
        child: trailing == null
            ? Text(
                text,
                style: fonts.pjs20WhiteW700,
                textAlign: TextAlign.center,
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    text,
                    style: fonts.pjs20WhiteW700,
                  ),
                  trailing!
                ],
              ),
      ),
    );
  }
}
