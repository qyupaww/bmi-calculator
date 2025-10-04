import 'package:flutter/material.dart';

class BmiModel extends ChangeNotifier {
  int _age = 15;
  int _weight = 35;
  double _height = 100.0;
  bool _isMale = true;

  int get age => _age;

  int get weight => _weight;

  double get height => _height;

  bool get isMale => _isMale;

  void changeGender() {
    _isMale = !_isMale;
    notifyListeners();
  }

  void decrementWeight() {
    if (_weight > 0) {
      _weight--;
      notifyListeners();
    }
  }

  void incrementWeight() {
    _weight++;
    notifyListeners();
  }

  void decrementAge() {
    if (_age > 0) {
      _age--;
      notifyListeners();
    }
  }

  void incrementAge() {
    _age++;
    notifyListeners();
  }

  void setHeightValue(double value) {
    _height = value;
    notifyListeners();
  }

  double calculateBmi() {
    return _weight / (( _height / 100 ) * ( _height / 100 ));
  }

  String getBmiStatus() {
    final bmiResult = calculateBmi();
    if (bmiResult < 18.5) {
      return "UNDERWEIGHT";
    } else if (bmiResult >= 18.5 && bmiResult <= 24.9) {
      return "NORMAL";
    } else if (bmiResult >= 25.0 && bmiResult <= 29.9) {
      return "OVERWEIGHT";
    } else {
      return "OBESITAS";
    }
  }

  String getBmiDescription() {
    final bmiResult = calculateBmi();
    if (bmiResult < 18.5) {
      return "Berat badan kurang";
    } else if (bmiResult >= 18.5 && bmiResult <= 24.9) {
      return "Berat badan normal";
    } else if (bmiResult >= 25.0 && bmiResult <= 29.9) {
      return "Berat badan berlebih";
    } else {
      return "Berat badan sangat berlebihan (obesitas)";
    }
  }

  void resetAll() {
    _age = 15;
    _weight = 35;
    _height = 100.0;
    _isMale = true;
  }
}