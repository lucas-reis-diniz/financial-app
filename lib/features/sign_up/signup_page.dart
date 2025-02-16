import 'package:flutter/material.dart';
import 'package:piloto/common/constants/app_colors.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Start Saving',
            style: TextStyle(
              fontSize: 36,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              color: AppColors.mainColor,
            ),
          ),
          const Text(
            'Your Money!',
            style: TextStyle(
              fontSize: 36,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              color: AppColors.mainColor,
            ),
          ),
          Expanded(child: Image.asset('assets/images/signup.png')),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Email',
              hintStyle: TextStyle(
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                color: AppColors.text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}