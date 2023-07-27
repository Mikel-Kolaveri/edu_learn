import 'package:flutter/material.dart';

import 'colors.dart';

class Fonts {
  Fonts();

  final _plusJakartaSans = const TextStyle(fontFamily: 'Plus Jakarta Sans');

  TextStyle get _pjs10 => _plusJakartaSans.copyWith(fontSize: 10);
  TextStyle get _pjs13 => _plusJakartaSans.copyWith(fontSize: 13);
  TextStyle get _pjs16 => _plusJakartaSans.copyWith(fontSize: 16);
  TextStyle get _pjs20 => _plusJakartaSans.copyWith(fontSize: 20);
  TextStyle get _pjs25 => _plusJakartaSans.copyWith(fontSize: 25);

  //----------------------------------------------------------------------------

  TextStyle get _pjs10Black => _pjs10.copyWith(color: colors.blackText);

  TextStyle get _pjs13Grey => _pjs13.copyWith(color: colors.greyText);
  TextStyle get _pjs13Orange => _pjs13.copyWith(color: colors.orange);

  TextStyle get _pjs16Orange => _pjs16.copyWith(color: colors.orange);
  TextStyle get _pjs16Black => _pjs16.copyWith(color: colors.blackText);
  TextStyle get _pjs16White => _pjs16.copyWith(color: colors.white);
  TextStyle get _pjs16Grey => _pjs16.copyWith(color: colors.greyText);
  TextStyle get _pjs16GreyHint => _pjs16.copyWith(color: colors.greyHintText);

  TextStyle get _pjs20Grey => _pjs20.copyWith(color: colors.greyText);
  TextStyle get _pjs20White => _pjs20.copyWith(color: colors.white);
  TextStyle get _pjs20Orange => _pjs20.copyWith(color: colors.orange);

  TextStyle get _pjs25Black => _pjs25.copyWith(color: colors.blackText);
  TextStyle get _pjs25Orange => _pjs25.copyWith(color: colors.orange);
  TextStyle get _pjs25White => _pjs25.copyWith(color: colors.white);

  //----------------------------------------------------------------------------

  TextStyle get pjs16GreyW400 =>
      _pjs16Grey.copyWith(fontWeight: FontWeight.w400);

  TextStyle get pjs13GreyW500 =>
      _pjs13Grey.copyWith(fontWeight: FontWeight.w500);
  TextStyle get pjs13OrangeW500 =>
      _pjs13Orange.copyWith(fontWeight: FontWeight.w500);
  TextStyle get pjs16GreyW500 =>
      _pjs16Grey.copyWith(fontWeight: FontWeight.w500);
  TextStyle get pjs16BlackW500 =>
      _pjs16Black.copyWith(fontWeight: FontWeight.w500);
  TextStyle get pjs16WhiteW500 =>
      _pjs16White.copyWith(fontWeight: FontWeight.w500);
  TextStyle get pjs16GreyHintW500 =>
      _pjs16GreyHint.copyWith(fontWeight: FontWeight.w500);
  TextStyle get pjs20GreyW500 =>
      _pjs20Grey.copyWith(fontWeight: FontWeight.w500);

  TextStyle get pjs10BlackW700 =>
      _pjs10Black.copyWith(fontWeight: FontWeight.w700);
  TextStyle get pjs16BlackW700 =>
      _pjs16Black.copyWith(fontWeight: FontWeight.w700);
  TextStyle get pjs16OrangeW700 =>
      _pjs16Orange.copyWith(fontWeight: FontWeight.w700);
  TextStyle get pjs20WhiteW700 =>
      _pjs20White.copyWith(fontWeight: FontWeight.w700);
  TextStyle get pjs20OrangeW700 =>
      _pjs20Orange.copyWith(fontWeight: FontWeight.w700);
  TextStyle get pjs25BlackW700 =>
      _pjs25Black.copyWith(fontWeight: FontWeight.w700);
  TextStyle get pjs25OrangeW700 =>
      _pjs25Orange.copyWith(fontWeight: FontWeight.w700);
  TextStyle get pjs25WhiteW700 =>
      _pjs25White.copyWith(fontWeight: FontWeight.w700);
}

final fonts = Fonts();
