import 'package:flutter/material.dart';

import 'gradient_container.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return GradientContainer.akatoki(
      child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png', width: 240),
                const SizedBox(height: 12),
                Image.asset(
                  'assets/images/description.png',
                  width: 180,
                  color: const Color.fromARGB(220, 255, 255, 255),
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.8),
            child: SizedBox(
              width: 200,
              child: OutlinedButton(
                onPressed: startQuiz,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                child: const Text('始める'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
