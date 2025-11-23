import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF065F52),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Skip',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 85),
                Image.asset(
                  'assets/images/development-coding.png',
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 24),
                const Text(
                  'Best place to learn programming',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'In Course programming center, you will learn how to code in the right way with the best instructors.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFFFC107),
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 30),

                // Dots & Next button
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(radius: 5, backgroundColor: Colors.white),
                        SizedBox(width: 5),
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.white38,
                        ),
                        SizedBox(width: 5),
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.white38,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 24),
                FloatingActionButton(
                  onPressed: () {
                  },
                  shape: const CircleBorder(),
                  backgroundColor: const Color(0xFF20473E),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 30,
                  ),
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
