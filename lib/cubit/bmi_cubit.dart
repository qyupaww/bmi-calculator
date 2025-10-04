import 'package:flutter_bloc/flutter_bloc.dart';

part 'bmi_state.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit() : super(const BmiState());
  
  void changeGender() {
    emit(state.copyWith(
      isMale: !state.isMale,
    ));
  }

  void decrementWeight() {
    if (state.weight > 0) {
      emit(state.copyWith(
        weight: state.weight - 1,
      ));
    }
  }

  void incrementWeight() {
    emit(state.copyWith(
      weight: state.weight + 1,
    ));
  }

  void decrementAge() {
    if (state.age > 0) {
      emit(state.copyWith(
        age: state.age - 1,
      ));
    }
  }

  void incrementAge() {
    emit(state.copyWith(
      age: state.age + 1,
    ));
  }

  void setHeightValue(double value) {
    emit(state.copyWith(
      height: value,
    ));
  }

  void clear() {
    emit(state.clear());
  }

  double calculateBmi() {
    return state.weight / (( state.height.toInt() / 100 ) * ( state.height.toInt() / 100 ));
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
}
