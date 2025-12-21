import 'package:courses/core/helpers/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key, required this.text1, required this.text2, required this.onTap,
  });
  final String text1;
  final String text2;
  final void  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text2,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          TextSpan(
            text: text1,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = onTap
          ),
        ],
      ),
    );
  }
}
