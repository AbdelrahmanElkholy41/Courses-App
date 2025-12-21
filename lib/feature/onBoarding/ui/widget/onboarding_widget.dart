import 'package:courses/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    super.key,
    required this.text1,
    required this.text2,
    required this.image,
    this.onPressed,
    required this.currentPageIndex,
  });
  final String text1;
  final String text2;
  final String image;
  final void Function()? onPressed;
  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF065F52),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SkipComp(onPressed: () {
                context.pushNamed(Routes.loginScreen);
              }),
              const SizedBox(height: 85),
              Image.asset(image, fit: BoxFit.contain),
              const SizedBox(height: 24),
              Text(
                text1,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                text2,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Color(0xFFFFC107), fontSize: 16),
              ),

              const SizedBox(height: 40),
              // Dots & Next button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: currentPageIndex == 0
                        ? Colors.white
                        : Colors.white38,
                  ),
                  const SizedBox(width: 5),
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: currentPageIndex == 1
                        ? Colors.white
                        : Colors.white38,
                  ),
                  const SizedBox(width: 5),
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: currentPageIndex == 2
                        ? Colors.white
                        : Colors.white38,
                  ),
                ],
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: 70,
                height: 70,
                child: FloatingActionButton(
                  onPressed: onPressed,

                  shape: const CircleBorder(),
                  backgroundColor: const Color(0xFF20473E),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 40,
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

class SkipComp extends StatelessWidget {
  final void Function()? onPressed;
  const SkipComp({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: onPressed,
        child: const Text(
          'Skip',
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
      ),
    );
  }
}
