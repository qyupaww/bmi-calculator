import 'package:flutter/material.dart';

import 'back_button_widget.dart';
import 'result_container_widget.dart';

class ResultBmiScreen extends StatelessWidget {
  const ResultBmiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F1538),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Result BMI Calculator",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 16.0),
          Text(
            "Your Result",
            style: TextStyle(
              color: Colors.white,
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          ResultContainerWidget(),
          SizedBox(height: 16.0),
          BackButtonWidget(),
        ],
      ),
    );
  }
}