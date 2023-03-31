import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../shared//progress_title.dart';
import 'package:flutter/services.dart';

class QuestionTwoScreen extends StatelessWidget {
  const QuestionTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Information'),
          leading: BackButton(
            color: Colors.white,
            onPressed: () => context.go('/questionOne'),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          actions: [
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
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
              TextField(
                autofocus: true,
                maxLength: 20,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9.,]')),
                ],
                style: const TextStyle(color: Color.fromRGBO(110, 110, 115, 1)),
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                            width: 2, color: Color.fromRGBO(248, 100, 197, 1))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                            width: 2, color: Color.fromRGBO(248, 100, 197, 1))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                            width: 2, color: Color.fromRGBO(248, 100, 197, 1))),
                    hintStyle:
                        TextStyle(color: Color.fromRGBO(110, 110, 115, 1))),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(100, 50),
                            backgroundColor:
                                const Color.fromRGBO(110, 110, 115, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: Text(
                            'Prev'.toUpperCase(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat",
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                          width:
                              8), // Optional SizedBox to add spacing between buttons
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () =>
                              context.go("/questionTwoNumberInput"),
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(100, 50),
                            backgroundColor:
                                const Color.fromRGBO(248, 100, 197, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: Text(
                            'Next'.toUpperCase(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat",
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
