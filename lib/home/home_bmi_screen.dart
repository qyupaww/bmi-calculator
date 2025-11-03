import 'package:flutter/material.dart';

import 'age_set_widget.dart';
import 'calculate_button_widget.dart';
import 'female_selection_widget.dart';
import 'height_slider_widget.dart';
import 'male_selection_widget.dart';
import 'weight_set_widget.dart';

class HomeBmiScreen extends StatelessWidget {
  const HomeBmiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F1538),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Column(
        children: [
          Row(
            children: [
              MaleSelectionWidget(),
              SizedBox(width: 24.0),
              FemaleSelectionWidget(),
            ],
          ),
          SizedBox(height: 24.0),
          HeightSliderWidget(),
          SizedBox(height: 24.0),
          Row(
            children: [
              WeightSetWidget(),
              SizedBox(width: 24.0),
              AgeSetWidget(),
            ],
          ),
          SizedBox(height: 24.0),
          CalculateButtonWidget(),
        ],
      ),
    );
  }
}
