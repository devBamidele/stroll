import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TextStyles {
  static TextStyle header = const TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 34,
    color: AppColors.purpleTextColor,
    shadows: [
      BoxShadow(
        color: AppColors.backgroundColor,
        blurRadius: 10,
        spreadRadius: 3,
      ),
      BoxShadow(
        color: AppColors.purpleTextColor,
        blurRadius: 10,
        spreadRadius: 4,
      )
    ],
  );

  static TextStyle details = const TextStyle(
    fontSize: 13,
    color: AppColors.whiteTextColor,
    shadows: [
      BoxShadow(
        color: AppColors.backgroundColor,
        blurRadius: 10,
        spreadRadius: 3,
      ),
      BoxShadow(
        color: AppColors.whiteTextColor,
        blurRadius: 10,
        spreadRadius: 4,
      )
    ],
    fontWeight: FontWeight.w600,
  );

  static TextStyle nameTag = const TextStyle(
    fontWeight: FontWeight.w700,
    color: AppColors.whiteTextColor,
    fontSize: 11,
  );

  static TextStyle response = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13,
    fontStyle: FontStyle.italic,
    color: AppColors.purpleTextColor,
    shadows: [
      BoxShadow(
          color: AppColors.whiteTextColor, blurRadius: 0.3, spreadRadius: 1),
    ],
  );

  static TextStyle options = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.whiteTextColor,
  );
}
