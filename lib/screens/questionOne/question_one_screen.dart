import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../shared//progress_title.dart';
import 'package:flutter_custom_selector/flutter_custom_selector.dart';

class QuestionOneScreen extends StatefulWidget {
  const QuestionOneScreen({Key? key}) : super(key: key);
  @override
  _QuestionOneScreen createState() => _QuestionOneScreen();
}

class _QuestionOneScreen extends State<QuestionOneScreen> {
  List<String> dataString = ["Passport", "National Card"];
  String? selectedString;
  List<String>? selectedDataString;

  String selectedValue = "";
  Color nextColor = Colors.white;
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
              CustomSingleSelectField<String>(
                items: dataString,
                title: "",
                onSelectionDone: (value) {
                  selectedString = value;
                  setState(() {
                    selectedValue = value;
                  });
                },
                itemAsString: (item) => item,
              ),
              Expanded(
                child: Container(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                          onPressed: () => selectedValue.isNotEmpty
                              ? context.go("/questionTwo")
                              : null,
                          style: ElevatedButton.styleFrom(
                              backgroundColor: selectedValue.isNotEmpty
                                  ? const Color.fromRGBO(248, 100, 197, 1)
                                  : const Color.fromRGBO(62, 40, 56, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              minimumSize: const Size.fromHeight(50)),
                          child: Text(
                            'Next'.toUpperCase(),
                            style: TextStyle(
                                color: selectedValue.isNotEmpty
                                    ? Colors.white
                                    : const Color.fromRGBO(91, 69, 84, 1),
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
