import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../shared//progress_title.dart';
import 'package:flutter_custom_selector/flutter_custom_selector.dart';

class QuestionThreeScreen extends StatefulWidget {
  const QuestionThreeScreen({Key? key}) : super(key: key);
  @override
  _QuestionThreeScreen createState() => _QuestionThreeScreen();
}

class _QuestionThreeScreen extends State<QuestionThreeScreen> {
  @override
  List<String> dataString = [
    "United Kingdom (UK)",
    "United States (US)",
    "Portugal (PT)",
    "Brasil (BR)",
    "Turkey",
    "Brazil",
    "Tunisia",
    'Canada'
  ];
  String? selectedString;
  List<String>? selectedDataString;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Information'),
          leading: BackButton(
            color: Colors.white,
            onPressed: () => context.go('/home'),
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
            children: <Widget>[
              const ProgressTitle(),
              const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              CustomSingleSelectField<String>(
                items: dataString,
                title: "Country",
                onSelectionDone: (value) {
                  selectedString = value;
                  setState(() {});
                },
                width: double.infinity,
                selectedItemColor: Color.fromRGBO(248, 100, 197, 1),
                // decoration: const InputDecoration(
                //     // enabledBorder: OutlineInputBorder(
                //     //     borderRadius: BorderRadius.all(Radius.circular(20)),
                //     //     borderSide: BorderSide(
                //     //         width: 2, color: Color.fromRGBO(248, 100, 197, 1))),
                //     // border: OutlineInputBorder(
                //     //     borderRadius: BorderRadius.all(Radius.circular(20)),
                //     //     borderSide: BorderSide(
                //     //         width: 2, color: Color.fromRGBO(248, 100, 197, 1))),
                //     // focusedBorder: OutlineInputBorder(
                //     //     borderRadius: BorderRadius.all(Radius.circular(20)),

                //     ),
                itemAsString: (item) => item,
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(248, 100, 197, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          minimumSize: const Size.fromHeight(60)),
                      child: Text(
                        'Next'.toUpperCase(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontFamily: "Montserrat",
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              )
            ],
          ),
        ));
  }

  void _onCountriesSelectionComplete(value) {
    selectedDataString?.addAll(value);
    setState(() {});
  }
}
