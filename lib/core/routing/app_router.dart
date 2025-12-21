import 'package:courses/core/routing/routes.dart';
import 'package:courses/feature/onBoarding/ui/onboarding_2.dart';
import 'package:flutter/material.dart';
import '../../feature/auth/ui/forgot_password_screen.dart';
import '../../feature/auth/ui/login_screen.dart';
import '../../feature/auth/ui/sign_up_screen.dart';
import '../../feature/onBoarding/ui/onboarding_1.dart';
import '../../feature/onBoarding/ui/onboarding_3.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen1:
        return MaterialPageRoute(
          builder: (_) => const Onboarding1(),
        );
      case Routes.onBoardingScreen2:
        return MaterialPageRoute(
          builder:(_)=>const Onboarding2()
        );

      case Routes.onBoardingScreen3:
        return MaterialPageRoute(builder: (_) => const Onboarding3());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case Routes.forgotPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      // case Routes.notificationScreen:
      //   return MaterialPageRoute(builder: (_) => const NotifiScreen());
      // case Routes.doctorCategoryScreen:
      //   return MaterialPageRoute(builder: (_) => const DoctorCategory());
      // case Routes.recDocScreen: return MaterialPageRoute(builder: (_) => const RecDocScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
