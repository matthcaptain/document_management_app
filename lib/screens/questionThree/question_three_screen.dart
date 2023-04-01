import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../shared//progress_title.dart';
import 'package:country_picker/country_picker.dart';

class QuestionThreeScreen extends StatefulWidget {
  const QuestionThreeScreen({Key? key}) : super(key: key);
  @override
  _QuestionThreeScreen createState() => _QuestionThreeScreen();
}

class _QuestionThreeScreen extends State<QuestionThreeScreen> {
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
            children: <Widget>[
              const ProgressTitle(),
              const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              ElevatedButton(
                  onPressed: () {
                    showCountryPicker(
                      context: context,
                      showWorldWide: true,
                      onSelect: (Country country) {
                        print("Selct country: , ${country.displayName}");
                      },
                      countryListTheme: const CountryListThemeData(
                        flagSize: 0,
                        // Optional. Sets the border radius for the bottomsheet.
                        textStyle: TextStyle(
                            color: Color.fromRGBO(110, 110, 115, 1),
                            fontFamily: "Roboto",
                            fontSize: 20),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0),
                        ),
                        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
                        // Optional. Styles the search field.
                        inputDecoration: InputDecoration(
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(110, 110, 115, 1),
                            ),
                            labelStyle: TextStyle(
                              color: Color.fromRGBO(110, 110, 115, 1),
                            ),
                            prefixIconColor: Color.fromRGBO(110, 110, 115, 1),
                            focusColor: Color.fromRGBO(110, 110, 115, 1),
                            labelText: 'Search',
                            hintText: 'Start typing to search',
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(248, 100, 197, 1),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(248, 100, 197, 1),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(248, 100, 197, 1),
                              ),
                            )),
                        // Optional. Styles the text in the search field
                        searchTextStyle: TextStyle(
                          color: Color.fromRGBO(110, 110, 115, 1),
                          fontSize: 18,
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(29, 29, 31, 1)),
                  child: const Text(
                    "Country",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
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
}
