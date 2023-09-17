import 'package:flutter/material.dart';
import 'start_screeen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: StartScreen(),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
