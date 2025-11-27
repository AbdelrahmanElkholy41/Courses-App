import 'package:courses/feature/onBoarding/ui/onboarding_1.dart';
import 'package:flutter/material.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.onBoardingScreen1,
      onGenerateRoute: AppRouter().generateRoute, // Initialize AppRouter here
    );
  }
}