import 'package:flutter/material.dart';

import '../result/result_bmi_screen.dart';

class CalculateButtonWidget extends StatelessWidget {
  const CalculateButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        fixedSize: Size(MediaQuery.of(context).size.width, 60),
        backgroundColor: const Color(0XFFFF0C63),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ResultBmiScreen()),
        );
      }, 
      child: const Text(
        "Calculate BMI",
        style: TextStyle(
          color: Colors.white,
          fontSize: 24.0,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}