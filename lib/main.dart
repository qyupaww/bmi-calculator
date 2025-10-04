import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/bmi_cubit.dart';
import 'home/home_bmi_screen.dart';


void main() {
  runApp(
    BlocProvider(
      create: (_) => BmiCubit(),
      child: const BmiCalculatorApp(),
    )
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


