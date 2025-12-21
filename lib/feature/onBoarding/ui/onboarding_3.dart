import 'package:courses/core/helpers/extensions.dart';
import 'package:courses/feature/onBoarding/ui/widget/onboarding_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/routing/routes.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingWidget(
        text1: 'Achieve your goal and be unique',
        text2:
            'After completing the course, you will be able to keep up with the labor market and obtain a job opportunity in your field or start your own project.',
        image: 'assets/images/interface-success.png',
        currentPageIndex: 2,
        onPressed: (){
          context.pushNamed(Routes.loginScreen);
        }
      ),
    );
  }
}
