import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class CircleStepper extends StatelessWidget {
  const CircleStepper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularStepProgressIndicator(
      totalSteps: 4,
      currentStep: 2,
      width: 140,
      height: 140,
      roundedCap: (_, isSelected) => isSelected,
      child: CircularPercentIndicator(
        radius: 60.0,
        lineWidth: 20.0,
        percent: 0.70,
        center: const Text(
          "70%",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Montserrat",
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        progressColor: Colors.blue,
      ),
    );
  }
}
