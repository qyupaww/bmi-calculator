import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home/home_bmi_screen.dart';
import 'model/bmi_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => BmiModel(),
      child: const BmiCalculatorApp(),
    ),
  );
}

class BmiCalculatorApp extends StatelessWidget {
  const BmiCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "BMI Calculator App",
      home: HomeBmiScreen(),
    );
  }
}
