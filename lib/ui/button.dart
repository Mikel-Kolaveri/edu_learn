// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme/colors.dart';
import '../theme/fonts.dart';

class Button extends ConsumerWidget {
  const Button({
    super.key,
    this.padding,
    this.width,
    this.trailing,
    this.textStyle,
    this.borderRadius,
    required this.text,
    required this.onTap,
  });

  final String text;
  final double? width;
  final Widget? trailing;
  final VoidCallback onTap;
  final EdgeInsets? padding;
  final TextStyle? textStyle;
  final double? borderRadius;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: colors.orange,
            borderRadius:
                BorderRadius.all(Radius.circular(borderRadius ?? 15))),
        padding: padding ?? const EdgeInsets.all(14),
        width: width ?? double.infinity,
        child: trailing == null
            ? Text(
                text,
                style: textStyle ?? fonts.pjs20WhiteW700,
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
