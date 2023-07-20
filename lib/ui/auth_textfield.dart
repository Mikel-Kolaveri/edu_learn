import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthTextField extends ConsumerStatefulWidget {
  const AuthTextField(
      {super.key,
      this.isPassword = false,
      required this.icon,
      required this.controller,
      required this.hintText});
  final IconData icon;
  final TextEditingController controller;
  final bool isPassword;
  final String hintText;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends ConsumerState<AuthTextField> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword && showPassword,
      controller: widget.controller,
      decoration: InputDecoration(
          iconColor: colors.orange,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colors.orange),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          hintText: widget.hintText,
          hintStyle: fonts.pjs16GreyHintW500,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 16),
            child: Icon(widget.icon, color: colors.greyText),
          ),
          suffixIcon: widget.isPassword
              ? Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: GestureDetector(
                    onTap: () {
                      print(showPassword);
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    child: Icon(
                        showPassword
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: colors.greyText),
                  ))
              : null,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: colors.greyborder),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          )),
    );
  }
}
