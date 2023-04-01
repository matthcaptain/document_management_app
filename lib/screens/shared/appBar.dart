import 'package:flutter/material.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Information'),
      centerTitle: true,
      backgroundColor: const Color.fromRGBO(29, 29, 31, 1),
      actions: [
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(29, 29, 31, 1),
            ),
            child: const Text(
              "Skip",
              style: TextStyle(color: Colors.grey, fontFamily: "Roboto"),
            ))
      ],
    );
  }
}
