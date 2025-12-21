import 'package:courses/core/helpers/extensions.dart';
import 'package:courses/core/widgets/coutom_text_field.dart';
import 'package:courses/feature/auth/ui/widget/custom_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/custom_main_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Center(child: Image.asset('assets/images/book.png')),
                const SizedBox(height: 65),
                Card(
                  color: const Color(0xffF2F2F2),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 15),
                        const Text(
                          'Email',
                          style: TextStyle(
                            color: Color(0xff2F2F2F),
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 10),
                        CustomTextField(
                          hintText: 'Enter your Email',
                          validator: (value) {},
                        ),
                        const SizedBox(height: 24),
                        const Text(
                          'Password',
                          style: TextStyle(
                            color: Color(0xff2F2F2F),
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 10),
                        CustomTextField(
                          hintText: 'Enter your Password',
                          validator: (value) {},
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              context.pushNamed(Routes.forgotPasswordScreen);
                            },
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Color(0xff363636),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 22),
                        AppTextButton(
                          backgroundColor: const Color(0xff20473E),
                          buttonText: 'LOGIN',
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          onPressed: () {},
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text1: 'Sign Up',
                              text2: 'Don\'t have an account?',
                              onTap: () {
                                context.pushNamed(Routes.signUpScreen);
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
