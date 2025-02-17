import 'package:flutter/material.dart';
import 'package:piloto/common/constants/app_colors.dart';
import 'package:piloto/common/constants/keys.dart';
import 'package:piloto/common/utils/uppercase_text_formatter.dart';
import 'package:piloto/common/widgets/custom_text_form_field.dart';
import 'package:piloto/common/widgets/password_form_field.dart';
import 'package:piloto/common/widgets/primary_button.dart';
import 'package:piloto/features/onboarding/onboarding_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
            const Center(
            child: Text(
              'Start Saving',
              style: TextStyle(
              fontSize: 36,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              color: AppColors.mainColor,
              ),
            ),
            ),
            const Center(
            child: Text(
              'Your Money!',
              style: TextStyle(
              fontSize: 36,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              color: AppColors.mainColor,
              ),
            ),
            ),
          Image.asset(
            'assets/images/signup.png',
          ),
          Form(
            child: Column(
              children: [
                CustomTextFormField(
                  key: Keys.signUpNameField,
                  controller: null,
                  labelText: 'YOUR NAME',
                  hintText: 'Enter your name',
                  suffixIcon: Icon(Icons.person, color: AppColors.secondaryColor,),
                  inputFormatters: [
                    UpperCaseTextInputFormatter()
                  ],
                ),
                CustomTextFormField(
                  key: Keys.signUpEmailField,
                  controller: null,
                  labelText: 'EMAIL',
                  hintText: 'Enter your email',
                  keyboardType: TextInputType.emailAddress,
                  suffixIcon: Icon(Icons.email, color: AppColors.secondaryColor,),
                ),
                PasswordFormField(
                  key: Keys.signUpPasswordField,
                  controller: null,
                  labelText: 'PASSWORD',
                  hintText: 'Enter your password',
                ),
                PasswordFormField(
                  key: Keys.signUpConfirmPasswordField,
                  controller: null,
                  labelText: 'CONFIRM PASSWORD',
                  hintText: 'Re-enter your password',
                ),  
              ],
            ),
          ),
          SizedBox(height: 20.0),
          PrimaryButton(
            text: 'Sign Up',
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