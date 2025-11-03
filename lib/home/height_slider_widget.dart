import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/bmi_model.dart';

class HeightSliderWidget extends StatelessWidget {
  const HeightSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        shape: BoxShape.rectangle,
        color: Color(0xFF272D4D),
      ),
      child: Consumer<BmiModel>(
        builder: (context, bmiModel, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "HEIGHT",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12.0),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "${bmiModel.height.toInt()}",
                      style: const TextStyle(
                        fontSize: 56.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const TextSpan(
                      text: "cm",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12.0),
              Slider(
                inactiveColor: const Color(0xffB2B9D5),
                activeColor: const Color(0xffA7164A),
                thumbColor: const Color(0xffFF0C63),
                min: 50,
                max: 250,
                value: bmiModel.height,
                onChanged: (value) {
                  // call provider method to update height and notify listeners
                  bmiModel.setHeightValue(value);
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
