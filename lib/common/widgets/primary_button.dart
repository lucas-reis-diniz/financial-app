import 'dart:math';

import 'package:flutter/material.dart';
import 'package:piloto/common/constants/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  const PrimaryButton({super.key, this.onPressed, required this.text, required Color textColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // log('Button pressed' );
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        backgroundColor: AppColors.mainColor,
        shadowColor: Colors.transparent,
      ).copyWith(
        elevation: WidgetStateProperty.all(0.0),
        backgroundColor: WidgetStateProperty.all(AppColors.mainColor),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: const LinearGradient(
            colors: [AppColors.mainColor, AppColors.mainColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SizedBox(
          width: 200,
          height: 50,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 15.0,
              ),
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
