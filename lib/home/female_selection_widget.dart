import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/bmi_cubit.dart';

class FemaleSelectionWidget extends StatelessWidget {
  const FemaleSelectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.all(10.0),
          backgroundColor: const Color(0xFF272D4D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: context.read<BmiCubit>().changeGender, 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<BmiCubit, BmiState>(
              builder: (context, state) {
                return Icon(
                  Icons.female,
                  color: (state.isMale != true) ?const Color(0xFFFF0C63):const Color(0xFFB2B9D5),
                  size: 90,
                );
              },
            ),
            const SizedBox(height: 8.0),
            const Text(
              "FEMALE",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
