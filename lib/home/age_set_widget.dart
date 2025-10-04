import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/bmi_cubit.dart';

class AgeSetWidget extends StatelessWidget {
  const AgeSetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          shape: BoxShape.rectangle,
          color: Color(0xFF272D4D),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "AGE",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12.0),
            BlocBuilder<BmiCubit, BmiState>(
              builder: (context, state) {
                return Text(
                  "${state.age}",
                  style: const TextStyle(
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),  
                );
              },
            ),
            const SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  heroTag: const ObjectKey("decrement_age"),
                  elevation: 0,
                  backgroundColor:const Color(0xff0F1538),
                  onPressed: context.read<BmiCubit>().decrementAge,
                  child: const Icon(
                    Icons.remove
                  ),
                ),
                const SizedBox(width: 8.0),
                FloatingActionButton(
                  heroTag: const ObjectKey("increment_age"),
                  elevation: 0,
                  backgroundColor:const Color(0xff0F1538),
                  onPressed: context.read<BmiCubit>().incrementAge,
                  child: const Icon(
                    Icons.add
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
