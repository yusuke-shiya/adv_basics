import 'package:flutter/material.dart';

import 'gradient_container.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return const GradientContainer.orange(
      child: Center(child: Text('This is QuestionsScreen.')),
    );
  }
}
