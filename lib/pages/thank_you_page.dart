import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/ui/button.dart';
import 'package:edu_learn_app/utils/assets.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/cupertino.dart';

class ThankYouPage extends StatelessWidget {
  const ThankYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 80, bottom: 24),
      child: Column(
        children: [
          Image.asset(Assets.thankYouPageImage),
          const GapV(32),
          Text(
            'Payment successful',
            style: fonts.pjs25BlackW700,
          ),
          const GapV(16),
          Text(
            'You have successfully made the class payment',
            style: fonts.pjs16GreyHintW500,
          ),
          const Spacer(),
          Button(
            text: 'Go to class',
            onTap: () {},
          )
        ],
      ),
    );
  }
}
