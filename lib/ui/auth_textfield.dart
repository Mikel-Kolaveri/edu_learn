import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthTextField extends ConsumerStatefulWidget {
  const AuthTextField(
      {super.key,
      this.isPasswordField = false,
      this.keyboardType,
      required this.icon,
      required this.controller,
      required this.hintText});
  final IconData icon;
  final TextEditingController controller;
  final bool isPasswordField;
  final String hintText;
  final TextInputType? keyboardType;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends ConsumerState<AuthTextField> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: fonts.pjs16BlackW500,
      keyboardType: widget.keyboardType,
      obscureText: widget.isPasswordField && !showPassword,
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
          suffixIcon: widget.isPasswordField
              ? Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    child: Icon(
                        showPassword
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: colors.greyText),
                  ))
              : null,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: colors.greyBorder),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colors.greyBorder),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          )),
    );
  }
}
