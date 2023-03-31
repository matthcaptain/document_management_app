import 'package:flutter/material.dart';
import './circle_progress_indicator.dart';

class ProgressTitle extends StatelessWidget {
  const ProgressTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: const Text(
                "Document",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  letterSpacing: 2,
                ),
              ),
            ),
            Text(
              "Details",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Roboto",
                fontWeight: FontWeight.bold,
                fontSize: 25,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
        Column(
          children: [CircleStepper()],
        ),
      ],
    );
  }
}
