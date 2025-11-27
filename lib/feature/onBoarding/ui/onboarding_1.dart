import 'package:courses/core/helpers/extensions.dart';
import 'package:courses/feature/onBoarding/ui/widget/onboarding_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/routing/routes.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingWidget(
      text1: 'Best place to learn programming',
      text2:
          'In Course programming center, you will learn how to code in the right way with the best instructors.',
      image: 'assets/images/development-coding.png',
      currentPageIndex: 0,
      onPressed: (){
        context.pushNamed(Routes.onBoardingScreen2);
      },
    );
  }
}
