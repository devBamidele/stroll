import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme {
  static ThemeData theme() => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor,
          brightness: Brightness.dark,
        ),
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
        fontFamily: "ProximaNova",
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.bottomSheetColor,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
        ),
      );
}
