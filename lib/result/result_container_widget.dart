import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/bmi_model.dart';

class ResultContainerWidget extends StatelessWidget {
  const ResultContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.symmetric(vertical: 28.0, horizontal: 24.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        shape: BoxShape.rectangle,
        color: Color(0xFF272D4D),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            Provider.of<BmiModel>(context).getBmiStatus(),
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            Provider.of<BmiModel>(context).calculateBmi().toStringAsFixed(2),
            style: const TextStyle(
              fontSize: 56.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            Provider.of<BmiModel>(context).getBmiDescription(),
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
