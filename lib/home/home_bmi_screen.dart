import 'package:flutter/material.dart';

import 'age_set_widget.dart';
import 'calculate_button_widget.dart';
import 'female_selection_widget.dart';
import 'height_slider_widget.dart';
import 'male_selection_widget.dart';
import 'weight_set_widget.dart';

class HomeBmiScreen extends StatefulWidget {
  const HomeBmiScreen({super.key});

  @override
  State<HomeBmiScreen> createState() => _HomeBmiScreenState();
}

class _HomeBmiScreenState extends State<HomeBmiScreen> {
  bool _isMale = true;
  double _height = 160.0;
  int _weight = 50;
  int _age = 22;

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
              MaleSelectionWidget(isMale: _isMale, onPressed: _changeGender),
              SizedBox(width: 24.0),
              FemaleSelectionWidget(isMale: _isMale, onPressed: _changeGender),
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

  void _changeGender() {
    setState(() {
      _isMale = !_isMale;
    });
  }

  void _decrementWeight() {
    if (_weight > 0) {
      setState(() {
        _weight--;
      });
    }
  }

  void _incrementWeight() {
    setState(() {
      _weight++;
    });
  }

  void _decrementAge() {
    if (_age > 0) {
      setState(() {
        _age--;
      });
    }
  }

  void _incrementAge() {
    setState(() {
      _age++;
    });
  }

  void _setHeightValue(double value) {
    setState(() {
      _height = value;
    });
  }
}
