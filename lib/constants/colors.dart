import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color(0xFF8B88EF);
  static const whiteTextColor = Color(0xFFF5F5F5);
  static const purpleTextColor = Color(0xFFCCC8FF);
  static const greyColor = Color(0xFF6F6E7C);
  static const cardColor = Color(0xFF21242B);
  static const secondaryCardColor = Color(0xFF181A1F);
  static const greyTextColor = Color(0xFFC4C4C4);

  static const backgroundColor = Color(0xFF07030E);
  static const bottomSheetColor = Color(0xFF0f1115);

  static LinearGradient flameBgGradient = LinearGradient(
    begin: Alignment.center,
    end: Alignment.topCenter,
    colors: [
      Colors.transparent,
      Colors.black.withOpacity(.3),
    ],
    stops: const [0.1, 1],
  );
}
