import 'package:flutter/material.dart';
import 'package:piloto/common/constants/app_colors.dart';

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
        Text('Spend Smarter', style: TextStyle(fontSize: 36, fontFamily: 'Inter', fontWeight: FontWeight.w700, color: AppColors.mainColor),),
        Text('Save More', style: TextStyle(fontSize: 36, fontFamily: 'Inter', fontWeight: FontWeight.w700, color: AppColors.mainColor),),
        SizedBox(height: 20.0,),
        ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          backgroundColor: AppColors.mainColor,
          shadowColor: Colors.transparent,
        ).copyWith(
          elevation: MaterialStateProperty.all(0.0),
          backgroundColor: MaterialStateProperty.all(AppColors.mainColor),
        ), child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: const LinearGradient(
              colors: [AppColors.mainColor, AppColors.mainColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SizedBox(width: 200, height: 50,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.bold, color: AppColors.white),
                ),
              ),
            ),
          ),
        ),),
        SizedBox(height: 20.0,),
        Text('Already have account? Log in', style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w500, color: AppColors.black),),
        SizedBox(height: 50.0,)
      ],),
    );
  }
}
