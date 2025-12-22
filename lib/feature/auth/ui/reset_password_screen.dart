import 'package:courses/feature/auth/ui/widget/success_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/widgets/custom_main_button.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SafeArea(
          child: SingleChildScrollView(
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
                verticalSpace(50.h),
                Card(
                  color: const Color(0xffF2F2F2),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 9.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        verticalSpace(15.h),
                        const Text(
                          'Enter Verification Code',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff101623),
                          ),
                        ),
                        verticalSpace(13.h),
                        const Text(
                          'Enter code that we have sent to your number ',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff787878),
                          ),
                        ),
                        const Text(
                          '012345678***',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff101623),
                          ),
                        ),
                        verticalSpace(70.h),

                        PinCodeTextField(
                          appContext: context,
                          length: 6,
                          obscureText: false,
                          animationType: AnimationType.fade,
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.underline,
                            borderRadius: BorderRadius.circular(5),
                            fieldHeight: 50,
                            fieldWidth: 40,
                            activeFillColor: Colors.white,
                            inactiveColor: const Color(
                              0xFF5C9A8A,
                            ), // Matches your teal color
                            selectedColor: const Color(0xFF5C9A8A),
                            activeColor: const Color(0xFF5C9A8A),
                          ),
                          animationDuration: const Duration(milliseconds: 300),
                          backgroundColor: Colors.transparent,
                          enableActiveFill: false,
                          // controller: textEditingController,
                          onCompleted: (v) {
                            // Called when user enters all 6 digits
                            if (kDebugMode) {
                              print("Code entered: $v");
                            }
                          },
                          onChanged: (value) {
                            if (kDebugMode) {
                              print(value);
                            }
                          },
                        ),
                        verticalSpace(40.h),
                        AppTextButton(
                          backgroundColor: const Color(0xff20473E),
                          buttonText: 'Verify',
                          textStyle: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                          onPressed: () {

                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (context) => const SuccessDialog(),
                            );
                          },
                        ),
                        verticalSpace(50.h),
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
