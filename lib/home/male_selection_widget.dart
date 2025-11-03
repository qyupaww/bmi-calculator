import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/bmi_model.dart';

class MaleSelectionWidget extends StatelessWidget {
  const MaleSelectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BmiModel>(
      builder: (context, bmiModel, child) {
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
            onPressed: Provider.of<BmiModel>(
              context,
              listen: false,
            ).changeGender,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.male,
                  color: (Provider.of<BmiModel>(context).isMale == true)
                      ? const Color(0xFFFF0C63)
                      : const Color(0xFFB2B9D5),
                  size: 90,
                ),
                const SizedBox(height: 8.0),
                const Text(
                  "MALE",
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
      },
    );
  }
}
