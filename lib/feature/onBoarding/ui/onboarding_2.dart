import 'package:courses/core/helpers/extensions.dart';
import 'package:courses/feature/onBoarding/ui/widget/onboarding_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/routing/routes.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingWidget(
        text1: 'Excellent learning environment',
        text2:
            'You can choose the constructor you like, and the academy provides continuous follow-up and periodic exams, and viewing the educational content on our platform to catch up on what you missed.',
        image: 'assets/images/work-video-conference.png',
        currentPageIndex: 1,
        onPressed:(){
          context.pushNamed(Routes.onBoardingScreen3);
        }
      ),
    );
  }
}
