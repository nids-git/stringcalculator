import 'package:flutter/material.dart';

import 'StringCalculator.dart';

void main() {
  final calculator = StringCalculator();
  final result = calculator.add('//[**][%%]\n1%%2**3');
  print('Final Result: $result');
  //runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

