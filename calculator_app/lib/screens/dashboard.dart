import 'package:calculator_app/screens/appBarConstant.dart';
import 'package:calculator_app/screens/krish.dart';
import 'package:calculator_app/utlis/color.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String calculateString = '0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarConstant(),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4437,
            width: double.infinity,
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    calculateString,
                    style: const TextStyle(fontSize: 48),
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(shape: BoxShape.rectangle),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _CalButton(
                      height: 50,
                      width: 35,
                      backgroundColor: kGreen,
                      buttonText: '%',
                      onPressed: () {
                        setState(() {
                          calculateString += '%';
                        });
                      },
                    ),
                    _CalButton(
                      height: 50,
                      width: 35,
                      backgroundColor: kGreen,
                      buttonText: '.',
                      onPressed: () {
                        setState(() {
                          calculateString += '.';
                        });
                      },
                    ),
                    _CalButton(
                      height: 50,
                      width: 35,
                      backgroundColor: kGreen,
                      buttonText: '/',
                      onPressed: () {
                        setState(() {
                          calculateString += '/';
                        });
                      },
                    ),
                    _CalButton(
                      height: 50,
                      width: 35,
                      backgroundColor: kred,
                      buttonText: 'C',
                      onPressed: () {
                        setState(() {
                          calculateString = '0';
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _CalButton(
                      height: 50,
                      width: 35,
                      backgroundColor: kBlue,
                      buttonText: '7',
                      onPressed: () {
                        setState(() {
                          calculateString += '7';
                        });
                      },
                    ),
                    _CalButton(
                      height: 50,
                      width: 35,
                      backgroundColor: kBlue,
                      buttonText: '8',
                      onPressed: () {
                        setState(() {
                          calculateString += '8';
                        });
                      },
                    ),
                    _CalButton(
                      height: 50,
                      width: 35,
                      backgroundColor: kBlue,
                      buttonText: '9',
                      onPressed: () {
                        setState(() {
                          calculateString += '9';
                        });
                      },
                    ),
                    _CalButton(
                      height: 50,
                      width: 35,
                      backgroundColor: kGreen,
                      buttonText: '+',
                      onPressed: () {
                        setState(() {
                          calculateString += '+';
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _CalButton(
                      height: 50,
                      width: 35,
                      backgroundColor: kBlue,
                      buttonText: '4',
                      onPressed: () {
                        setState(() {
                          calculateString += '4';
                        });
                      },
                    ),
                    _CalButton(
                      height: 50,
                      width: 35,
                      backgroundColor: kBlue,
                      buttonText: '5',
                      onPressed: () {
                        setState(() {
                          calculateString += '5';
                        });
                      },
                    ),
                    _CalButton(
                      height: 50,
                      width: 35,
                      backgroundColor: kBlue,
                      buttonText: '6',
                      onPressed: () {
                        setState(() {
                          calculateString += '6';
                        });
                      },
                    ),
                    _CalButton(
                      height: 50,
                      width: 35,
                      backgroundColor: kGreen,
                      buttonText: '-',
                      onPressed: () {
                        setState(() {
                          calculateString += '-';
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _CalButton(
                      height: 50,
                      width: 35,
                      backgroundColor: kBlue,
                      buttonText: '1',
                      onPressed: () {
                        setState(() {
                          calculateString += '1';
                        });
                      },
                    ),
                    _CalButton(
                      height: 50,
                      width: 35,
                      backgroundColor: kBlue,
                      buttonText: '2',
                      onPressed: () {
                        setState(() {
                          calculateString += '2';
                        });
                      },
                    ),
                    _CalButton(
                      height: 50,
                      width: 35,
                      backgroundColor: kBlue,
                      buttonText: '3',
                      onPressed: () {
                        setState(() {
                          calculateString += '3';
                        });
                      },
                    ),
                    _CalButton(
                      height: 50,
                      width: 35,
                      backgroundColor: kGreen,
                      buttonText: 'X',
                      onPressed: () {
                        setState(() {
                          calculateString += '*';
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _CalButton(
                      height: 50,
                      width: 100,
                      backgroundColor: kBlue,
                      buttonText: '0',
                      onPressed: () {
                        setState(() {
                          if (calculateString == '0') {
                            calculateString = '0';
                          } else {
                            calculateString += '0';
                          }
                        });
                      },
                    ),
                    _CalButton(
                      height: 50,
                      width: 100,
                      backgroundColor: kred,
                      buttonText: '=',
                      onPressed: () {
                        setState(() {
                          calculateString =
                              " ${evaluateMathExpression(calculateString)}";
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text('Krish Ki practice'),
      centerTitle: true,
      backgroundColor: kGreen,
      leading: const Icon(Icons.menu),
      actions: [
        Container(
          margin: const EdgeInsets.fromLTRB(5, 0, 3, 0),
          child: const Icon(
            size: 29,
            Icons.notification_add,
            color: kWhite,
            weight: BorderSide.strokeAlignOutside,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const KPhoto()));
          },
          child: Container(
            margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: const Icon(
              Icons.mic,
              size: 29,
              color: kWhite,
            ),
          ),
        ),
      ],
    );
  }
}

class _CalButton extends StatelessWidget {
  final double height;
  final double width;
  final Color backgroundColor;
  final String buttonText;
  final VoidCallback onPressed;

  const _CalButton({
    Key? key,
    required this.height,
    required this.width,
    required this.backgroundColor,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        onPressed: onPressed,
        child: Container(
          // padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          margin: const EdgeInsets.fromLTRB(3, 3, 3, 3),
          height: height,
          width: width,
          child: Center(
            child: Text(
              buttonText,
              style: const TextStyle(color: Colors.white, fontSize: 50.0),
            ),
          ),
        ),
      ),
    );
  }
}

String evaluateMathExpression(String expression) {
  try {
    final parser = Parser();
    final parsedExpression = parser.parse(expression);
    final ContextModel contextModel = ContextModel();
    final double result =
        parsedExpression.evaluate(EvaluationType.REAL, contextModel);

    return result.toString();
  } catch (e) {
    // Handle any parsing or evaluation errors here
    return 'Error';
  }
}
