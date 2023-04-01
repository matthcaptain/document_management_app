import 'package:documentdetails/screens/shared/circle_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  _WelcomeScreen createState() => _WelcomeScreen();
}

class _WelcomeScreen extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
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
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
                child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleStepper(),
                        const Padding(
                            padding: EdgeInsets.fromLTRB(0, 50, 0, 0)),
                        const Text(
                          "Document Details",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            letterSpacing: 2,
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                        Text(
                          "Let's complete the next few questions",
                          style: TextStyle(
                            color: Colors.pink[300],
                            fontFamily: "Roboto",
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ))),
            Expanded(
              child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                        onPressed: () => context.go("/questionOne"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            minimumSize: const Size.fromHeight(50)),
                        child: Text(
                          'start'.toUpperCase(),
                          style: const TextStyle(
                              color: Colors.black,
                              fontFamily: "Montserrat",
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
