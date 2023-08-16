import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:edu_learn_app/ui/button.dart';
import 'package:edu_learn_app/ui/header.dart';
import 'package:edu_learn_app/utils/gap.dart';
import 'package:flutter/material.dart';

Text _greyText(String text) => Text(
      text,
      style: fonts.pjs13GreyHintW500,
    );

final _divider = Divider(
  color: colors.greyText,
  thickness: 0.5,
);

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header.backButton(),
          const GapV(32),
          Text(
            'Payment detail',
            style: fonts.pjs25BlackW700,
          ),
          const GapV(32),
          _greyText(
            'Discount & voucher',
          ),
          const GapV(16),
          _ClickableRow(text: 'Discount', onTap: () {}),
          const GapV(16),
          _ClickableRow(text: 'Referral code', onTap: () {}),
          const GapV(16),
          _divider,
          const GapV(8),
          _greyText('Payment Method'),
          const GapV(16),
          _ClickableRow(
            text: 'Payment',
            onTap: () {},
          ),
          const GapV(16),
          _divider,
          const GapV(8),
          const _DetailsSection(
            classPrice: 10,
            discount: 2,
            referralCodeDiscount: 1,
          ),
          const Spacer(),
          Button(
            text: 'Pay now',
            onTap: () {},
          ),
          const GapV(16),
        ],
      ),
    );
  }
}

class _ClickableRow extends StatelessWidget {
  const _ClickableRow({required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: fonts.pjs13BlackW500,
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: colors.blackText,
            size: 12,
          )
        ],
      ),
    );
  }
}

class _DetailsSection extends StatelessWidget {
  const _DetailsSection(
      {required this.classPrice,
      required this.discount,
      required this.referralCodeDiscount});
  final double classPrice;
  final double discount;
  final double referralCodeDiscount;

  @override
  Widget build(BuildContext context) {
    Widget priceRow(String title, double price) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: fonts.pjs13BlackW500,
            ),
            Text(
              '$price \$',
              style: fonts.pjs13BlackW500,
            )
          ],
        );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _greyText('Detail'),
        const GapV(16),
        priceRow('Class price', classPrice),
        const GapV(16),
        priceRow('Discount', discount),
        const GapV(16),
        priceRow('Referral code discount', referralCodeDiscount),
        const GapV(16),
        _divider,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Sub total',
              style: fonts.pjs16BlackW700,
            ),
            Text(
              '${classPrice - discount - referralCodeDiscount} \$',
              style: fonts.pjs16BlackW700,
            ),
          ],
        ),
      ],
    );
  }
}
