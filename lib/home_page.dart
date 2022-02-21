// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable, unused_element, dead_code, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:calculator_app/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String input = '';
  String output = '';
  String inputend = '';

  final List buttons = [
    'AC',
    'C',
    'DEL',
    '/',
    '7',
    '8',
    '9',
    'x',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '.',
    '0',
    '00',
    '='
  ];

  void equalPress() {
    String finalinput = input;
    finalinput = finalinput.replaceAll('x', '*');

    Parser p = new Parser();
    Expression exp = p.parse(finalinput);
    ContextModel cm = ContextModel();
    output = exp.evaluate(EvaluationType.REAL, cm).toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            height: 70,
            width: double.maxFinite,
            decoration: BoxDecoration(
                gradient: RadialGradient(
                    radius: 10,
                    colors: [Color.fromARGB(255, 190, 190, 190), Colors.black]),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
            child: Center(
                child: Text(
              "Calculator",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  color: Colors.black),
            )),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    padding: EdgeInsets.only(left: 20, right: 10),
                    child: Text(
                      input,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      output,
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            input = '';
                            inputend = '';
                            output = '';
                          });
                        },
                        buttonText: buttons[index],
                        color: Color.fromARGB(255, 87, 87, 87),
                        textColor: Colors.white,
                      );
                    } else if (index == 1) {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            input = '';
                            inputend = '';
                            output = '';
                          });
                        },
                        buttonText: buttons[index],
                        color: Color.fromARGB(255, 87, 87, 87),
                        textColor: Colors.white,
                      );
                    } else if (index == 2) {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            input = input.substring(0, input.length - 1);
                            inputend =
                                inputend.substring(0, inputend.length - 1);
                            equalPress();
                          });
                        },
                        buttonText: '',
                        IconData: CupertinoIcons.delete_left,
                        color: Color.fromARGB(255, 87, 87, 87),
                        textColor: Colors.white,
                      );
                    } else if (index == 3) {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            if (output != '') {
                              input = output + buttons[index];
                              inputend = inputend + buttons[index];
                              output = '';
                            } else {
                              inputend = inputend + buttons[index];
                              input = input + buttons[index];
                            }
                          });
                        },
                        buttonText: buttons[index],
                        color: Color.fromARGB(255, 48, 48, 48),
                        textColor: Colors.white,
                      );
                    } else if (index == 4) {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            input = input + buttons[index];
                            inputend = inputend + buttons[index];

                            equalPress();
                          });
                        },
                        buttonText: buttons[index],
                        color: Color.fromARGB(255, 43, 43, 43),
                        textColor: Colors.white,
                      );
                    } else if (index == 5) {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            input = input + buttons[index];
                            inputend = inputend + buttons[index];

                            equalPress();
                          });
                        },
                        buttonText: buttons[index],
                        color: Color.fromARGB(255, 43, 43, 43),
                        textColor: Colors.white,
                      );
                    } else if (index == 6) {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            input = input + buttons[index];
                            inputend = inputend + buttons[index];
                            equalPress();
                          });
                        },
                        buttonText: buttons[index],
                        color: Color.fromARGB(255, 43, 43, 43),
                        textColor: Colors.white,
                      );
                    } else if (index == 7) {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            if (output != '') {
                              input = output + buttons[index];
                              inputend = inputend + buttons[index];
                              output = '';
                            } else {
                              inputend = inputend + buttons[index];
                              input = input + buttons[index];
                            }
                          });
                        },
                        buttonText: buttons[index],
                        color: Color.fromARGB(255, 48, 48, 48),
                        textColor: Colors.white,
                      );
                    } else if (index == 8) {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            input = input + buttons[index];
                            inputend = inputend + buttons[index];
                            equalPress();
                          });
                        },
                        buttonText: buttons[index],
                        color: Color.fromARGB(255, 43, 43, 43),
                        textColor: Colors.white,
                      );
                    } else if (index == 9) {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            input = input + buttons[index];
                            inputend = inputend + buttons[index];
                            equalPress();
                          });
                        },
                        buttonText: buttons[index],
                        color: Color.fromARGB(255, 43, 43, 43),
                        textColor: Colors.white,
                      );
                    } else if (index == 10) {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            input = input + buttons[index];
                            inputend = inputend + buttons[index];
                            equalPress();
                          });
                        },
                        buttonText: buttons[index],
                        color: Color.fromARGB(255, 43, 43, 43),
                        textColor: Colors.white,
                      );
                    } else if (index == 11) {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            if (output != '') {
                              input = output + buttons[index];
                              output = '';
                              inputend = inputend + buttons[index];
                            } else {
                              input = input + buttons[index];
                              inputend = inputend + buttons[index];
                            }
                          });
                        },
                        buttonText: buttons[index],
                        color: Color.fromARGB(255, 48, 48, 48),
                        textColor: Colors.white,
                      );
                    } else if (index == 12) {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            input = input + buttons[index];
                            inputend = inputend + buttons[index];
                            equalPress();
                          });
                        },
                        buttonText: buttons[index],
                        color: Color.fromARGB(255, 43, 43, 43),
                        textColor: Colors.white,
                      );
                    } else if (index == 13) {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            input = input + buttons[index];
                            inputend = inputend + buttons[index];
                            equalPress();
                          });
                        },
                        buttonText: buttons[index],
                        color: Color.fromARGB(255, 43, 43, 43),
                        textColor: Colors.white,
                      );
                    } else if (index == 14) {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            input = input + buttons[index];
                            inputend = inputend + buttons[index];
                            equalPress();
                          });
                        },
                        buttonText: buttons[index],
                        color: Color.fromARGB(255, 43, 43, 43),
                        textColor: Colors.white,
                      );
                    } else if (index == 15) {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            if (output != '') {
                              input = output + buttons[index];
                              inputend = inputend + buttons[index];
                              output = '';
                            } else {
                              input = input + buttons[index];
                              inputend = inputend + buttons[index];
                            }
                          });
                        },
                        buttonText: buttons[index],
                        color: Color.fromARGB(255, 48, 48, 48),
                        textColor: Colors.white,
                      );
                    } else if (index == 16) {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            input = input + buttons[index];
                            inputend = inputend + buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: Color.fromARGB(255, 43, 43, 43),
                        textColor: Colors.white,
                      );
                    } else if (index == 17) {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            input = input + buttons[index];
                            inputend = inputend + buttons[index];
                            equalPress();
                          });
                        },
                        buttonText: buttons[index],
                        color: Color.fromARGB(255, 43, 43, 43),
                        textColor: Colors.white,
                      );
                    } else if (index == 18) {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            input = input + buttons[index];
                            inputend = inputend + buttons[index];
                            equalPress();
                          });
                        },
                        buttonText: buttons[index],
                        color: Color.fromARGB(255, 43, 43, 43),
                        textColor: Colors.white,
                      );
                    } else {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            equalPress();
                            input = inputend;
                            inputend = '';
                          });
                        },
                        buttonText: buttons[index],
                        color: Color.fromARGB(255, 224, 224, 224),
                        textColor: Colors.black,
                      );
                    }
                    ;
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
