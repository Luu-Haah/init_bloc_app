import 'package:flutter/material.dart';
import 'package:bloc_initial_app/core/app_export.dart';

class AppStyle {
  static TextStyle txtRobotoRegular16 = TextStyle(
    color: ColorConstant.blueGray400,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtNunitoBold16 = TextStyle(
    color: ColorConstant.blueGray800,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtNunitoSemiBold12 = TextStyle(
    color: ColorConstant.blueGray800,
    fontSize: getFontSize(
      12,
    ),
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w600,
  );

  static TextStyle txtNunitoExtraBold22 = TextStyle(
    color: ColorConstant.blueGray800,
    fontSize: getFontSize(
      22,
    ),
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w800,
  );

  static TextStyle txtRobotoRegular20 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );
}
