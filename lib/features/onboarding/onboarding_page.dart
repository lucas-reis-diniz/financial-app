// ignore: unused_import
import 'dart:developer';
// ignore: unused_import
import 'dart:ffi';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:piloto/common/constants/app_colors.dart';
import 'package:piloto/common/widgets/primary_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: AppColors.iceWhite,
              child: Image.asset('assets/images/man.png'),
            ),
          ),
          Text(
            'Spend Smarter',
            style: TextStyle(
              fontSize: 36,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              color: AppColors.mainColor,
            ),
          ),
          Text(
            'Save More',
            style: TextStyle(
              fontSize: 36,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              color: AppColors.mainColor,
            ),
          ),
          SizedBox(height: 20.0),
            PrimaryButton(
            text: 'Get Started',
            textColor: Colors.white,
            ),
            SizedBox(height: 20.0),
            CustomTextButton(texts: ['Already have account ?', 'Log in'],),
          SizedBox(height: 50.0),
        ],
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final List<String> texts;
  final VoidCallback? onPressed;
  const CustomTextButton({
    super.key, required this.texts, this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      text: 'Already have account? ',
      style: TextStyle(
      fontSize: 16,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      color: AppColors.black,
      ),
      children: [
      TextSpan(
        text: 'Log in',
        style: TextStyle(
        fontSize: 16,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500,
        color: AppColors.mainColor,
        ),
        recognizer: TapGestureRecognizer()
        ..onTap = () {
          onPressed!();
        },
      ),
      ],
    ),
    );
  }
}

