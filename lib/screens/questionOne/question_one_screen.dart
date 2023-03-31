import 'package:flutter/material.dart';
import '../shared/circle_progress_indicator.dart';

class QuestionOneScreen extends StatelessWidget {
  const QuestionOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(20),
      child: Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
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
            )
          ],
        ),
      ),
    ));
  }
}
