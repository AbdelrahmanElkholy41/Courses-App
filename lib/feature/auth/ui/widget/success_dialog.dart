import 'package:courses/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/custom_main_button.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      child: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Success illustration
            Image.asset(
              'assets/images/Celebration-amico 1.png',
              height: 200.h,
              width: 200.w,
            ),
            SizedBox(height: 24.h),

            // Success title
            Text(
              'Success',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 12.h),

            // Success message
            Text(
              'You have successfully reset\nyour password.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.sp, color: Colors.grey),
            ),
            SizedBox(height: 24.h),

            // Done button
            AppTextButton(
              backgroundColor: const Color(0xff20473E),
              buttonText: 'Done',
              textStyle: TextStyle(fontSize: 16.sp, color: Colors.white),
              onPressed: () {
                context.pushNamed(Routes.homeScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
