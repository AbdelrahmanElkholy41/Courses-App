import 'package:courses/core/helpers/extensions.dart';
import 'package:courses/core/helpers/spacing.dart';
import 'package:courses/feature/auth/ui/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/coutom_text_field.dart';
import '../../../../core/widgets/custom_main_button.dart';
import '../../../core/routing/routes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.black,
                  ),
                ),
                verticalSpace(22.h),
                Center(child: Image.asset('assets/images/book.png')),
                verticalSpace(22.h),
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
                          'Email',
                          style: TextStyle(
                            color: Color(0xff2F2F2F),
                            fontSize: 16,
                          ),
                        ),
                        verticalSpace(10.h),
                        CustomTextField(
                          hintText: 'Enter your Email',
                          validator: (value) {},
                        ),
                        verticalSpace(10.h),
                        const Text(
                          'User Name',
                          style: TextStyle(
                            color: Color(0xff2F2F2F),
                            fontSize: 16,
                          ),
                        ),
                        verticalSpace(10.h),
                        CustomTextField(
                          hintText: 'Enter your User Name',
                          validator: (value) {},
                        ),
                        verticalSpace(10.h),
                        const Text(
                          'Password',
                          style: TextStyle(
                            color: Color(0xff2F2F2F),
                            fontSize: 16,
                          ),
                        ),
                        verticalSpace(10.h),
                        CustomTextField(
                          hintText: 'Enter your Password',
                          validator: (value) {},
                        ),
                        verticalSpace(10.h),
                        const Text(
                          'Confirm Password',
                          style: TextStyle(
                            color: Color(0xff2F2F2F),
                            fontSize: 16,
                          ),
                        ),
                        verticalSpace(10.h),
                        CustomTextField(
                          hintText: 'Enter your Confirm Password',
                          validator: (value) {},
                        ),
                        verticalSpace(22.h),
                        AppTextButton(
                          backgroundColor: const Color(0xff20473E),

                          buttonText: 'SIGN UP',
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          onPressed: () {},
                        ),
                        verticalSpace(16.h),
                        Center(
                          child: CustomText(
                            text1: 'Log in',
                            text2: 'Already  have an account? ',
                            onTap: () {
                              context.pushNamed(Routes.loginScreen);
                            },
                          ),
                        ),
                        verticalSpace(22.h),
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
