import 'package:flutter/material.dart';
import 'package:piloto/features/onboarding/onboarding_page.dart';
// ignore: unused_import
import 'package:piloto/features/splash/splash_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingPage(
        
      ),
    );
  }
}