import 'package:edu_learn_app/theme/fonts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

enum _Type { signin, signup }

class TermsConditionsPrivacyPolicyText extends StatelessWidget {
  const TermsConditionsPrivacyPolicyText.signin({super.key})
      : _type = _Type.signin;
  const TermsConditionsPrivacyPolicyText.signup({super.key})
      : _type = _Type.signup;
  final _Type _type;

  @override
  Widget build(BuildContext context) {
    final String leadingtext;
    final greyFont = fonts.pjs13GreyW500;
    final orangeFont = fonts.pjs13OrangeW500;
    if (_type == _Type.signin) {
      leadingtext =
          "By using an account, you agree to "; //EduLearn's Terms & Conditions and Privacy Policy";
    } else {
      leadingtext =
          "By creating an account, you agree to "; //EduLearn's Terms & Conditions and Privacy Policy";
    }

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(style: const TextStyle(height: 1.3), children: [
        TextSpan(
          text: leadingtext,
          style: greyFont,
        ),
        TextSpan(
            text: "EduLearn's Terms & Conditions ",
            style: orangeFont,
            recognizer: TapGestureRecognizer()..onTap = () {}),
        TextSpan(text: 'and ', style: greyFont),
        TextSpan(
            text: 'Privacy Policy',
            style: orangeFont,
            recognizer: TapGestureRecognizer()..onTap = () {})
      ]),
    );
  }
}
