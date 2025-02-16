import 'package:flutter/material.dart';
import 'package:piloto/common/constants/app_colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: AppColors.gradient,
            begin: Alignment.topCenter, end: Alignment.bottomCenter
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centraliza verticalmente
          children: [
            Text(
              'Please',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                letterSpacing: 1.2,
                fontFamily: 'Inter',
              ),
              textAlign: TextAlign.center, // Centraliza o texto horizontalmente
            ),
            Text(
              'Control',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                letterSpacing: 1.2,
                fontFamily: 'Inter',
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Me!',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                letterSpacing: 1.2,
                fontFamily: 'Inter',
              ),
              textAlign: TextAlign.center,
            ),
          ], 
        ),
      ),
    );
  }
}