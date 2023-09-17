import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.begin,
    required this.end,
    required this.child,
  });
  const GradientContainer.orange({super.key, required this.child})
      : begin = Colors.deepOrange,
        end = Colors.orange;
  const GradientContainer.akatoki({super.key, required this.child})
      : begin = const Color.fromARGB(255, 6, 11, 135),
        end = const Color.fromARGB(255, 12, 152, 199);

  final Color begin;
  final Color end;
  final Widget child;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            begin,
            end,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: child,
    );
  }
}
