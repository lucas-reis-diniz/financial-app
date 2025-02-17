import 'package:flutter/material.dart';
import 'package:piloto/common/constants/app_colors.dart';

final defaultTheme = ThemeData(
  inputDecorationTheme: const InputDecorationTheme(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.mainColor,
        width: 2.0,
      ),
    ),
  )
);