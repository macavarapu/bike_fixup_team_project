import 'package:flutter/material.dart';

import 'app_colors_constants.dart';

class TextStyles {
  static title(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? textColor,
      double? height}) {
    return getBaseStyle(fontSize ?? 25, fontWeight ?? FontWeight.w600,
        textColor ?? AppColors.black, height);
  }

  static subtitle(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? color,
      double? height}) {
    return getBaseStyle(fontSize ?? 22, fontWeight ?? FontWeight.w700,
        color ?? AppColors.black, height);
  }

  static body1(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? color,
      double? height}) {
    return getBaseStyle(fontSize ?? 16, fontWeight ?? FontWeight.w700,
        color ?? AppColors.black, height);
  }

  static body2(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? color,
      double? height}) {
    return getBaseStyle(fontSize ?? 16, fontWeight ?? FontWeight.w400,
        color ?? AppColors.black, height);
  }

  static body3(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? color,
      double? height}) {
    return getBaseStyle(fontSize ?? 14, fontWeight ?? FontWeight.w700,
        color ?? AppColors.black, height);
  }

  static body4(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? color,
      TextDecoration? decoration,
      Color? decorationColor,
      double? height}) {
    return getBaseStyle(fontSize ?? 15, fontWeight ?? FontWeight.w400,
        color ?? AppColors.black, height,
        decoration: decoration, decorationColor: decorationColor);
  }

  static caption1(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? color,
      double? height}) {
    return getBaseStyle(fontSize ?? 12, fontWeight ?? FontWeight.w700,
        color ?? AppColors.black, height);
  }

  static caption2(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? color,
      double? height}) {
    return getBaseStyle(fontSize ?? 12, fontWeight ?? FontWeight.w400,
        color ?? AppColors.black, height);
  }

  static TextStyle getBaseStyle(
      double fontSize, FontWeight fontWeight, Color color, double? height,
      {TextDecoration? decoration, Color? decorationColor}) {
    return TextStyle(
        fontFamily: robotofamily,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        height: height,
        decoration: decoration,
        decorationColor: decorationColor);
  }
}

const robotofamily = "Roboto";
