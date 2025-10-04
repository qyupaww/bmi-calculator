part of 'bmi_cubit.dart';

class BmiState {
  final int age;
  final int weight;
  final double height;
  final bool isMale;

  const BmiState({
    this.age = 15,
    this.weight = 35,
    this.height = 100.0,
    this.isMale = true,
  });

  BmiState copyWith({
    int? age,
    int? weight,
    double? height,
    bool? isMale,
  }) {
    return BmiState(
      age: age ?? this.age,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      isMale: isMale ?? this.isMale,
    );
  }

  BmiState clear() {
    return const BmiState();
  }
}