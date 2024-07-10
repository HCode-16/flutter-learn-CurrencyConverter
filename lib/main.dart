import 'package:flutter/material.dart';
import 'package:flutter_learn_1/currency_converter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'learn Flutter',
      home: CurrencyConverterPage(),
    );
  }
}
