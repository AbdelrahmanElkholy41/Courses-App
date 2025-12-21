import 'package:courses/core/helpers/spacing.dart';
import 'package:courses/core/widgets/coutom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/custom_main_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.black,
                ),
              ),
              verticalSpace(22.h),
              Center(child: Image.asset('assets/images/book.png')),
              verticalSpace(65.h),
              Card(
                color: const Color(0xffF2F2F2),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      verticalSpace(15.h),
                      const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color(0xff101623),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      verticalSpace(10.h),
                      const Text(
                        'Enter your phone numbe#2F2F2Fr, we will send you confirmation code',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff787878),
                        ),
                      ),
                      verticalSpace(47.h),
                      const Text(
                        'Phone Number',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff2F2F2F),
                        ),
                      ),
                      verticalSpace(10.h),
                      CustomTextField(
                        hintText: 'Enter your Phone Number',
                        validator: (value) {},
                      ),
                      verticalSpace(24.h),
                      AppTextButton(
                        backgroundColor: const Color(0xff20473E),
                        buttonText: 'Reset Password',
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        onPressed: () {},
                      ),
                      verticalSpace(35.h),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
