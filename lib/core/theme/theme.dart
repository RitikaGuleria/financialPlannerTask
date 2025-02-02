import 'package:earning_tracker/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static _border([Color color = AppPallete.borderColor]) => OutlineInputBorder(
    borderSide: BorderSide(
        width: 3,
        color: color
    ),
    borderRadius: BorderRadius.circular(10),
  );

  static final darkThemeMode = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: AppPallete.backgroundColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppPallete.backgroundColor,
      ),
      chipTheme: const ChipThemeData(
          color: MaterialStatePropertyAll(
              AppPallete.backgroundColor
          ),
          side: BorderSide.none
      ),
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(27),
          enabledBorder: _border(),
          border: _border(),
          focusedBorder: _border(AppPallete.gradient2),
          errorBorder: _border(AppPallete.errorColor)
      )
  );
}