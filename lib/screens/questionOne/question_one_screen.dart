import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../shared//progress_title.dart';

class QuestionOneScreen extends StatefulWidget {
  const QuestionOneScreen({Key? key}) : super(key: key);
  @override
  _QuestionOneScreen createState() => _QuestionOneScreen();
}

class _QuestionOneScreen extends State<QuestionOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Information'),
          leading: BackButton(
            color: Colors.white,
            onPressed: () => context.go('/home'),
          ),
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
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const ProgressTitle(),
              const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              Expanded(
                child: Container(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                          onPressed: () => context.go("/questionTwo"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(248, 100, 197, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              minimumSize: const Size.fromHeight(50)),
                          child: Text(
                            'Next'.toUpperCase(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat",
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ))),
              )
            ],
          ),
        ));
  }
}
