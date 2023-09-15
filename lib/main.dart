import 'package:flutter/material.dart';

void main() => runApp(const Calculator());

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var firstNum = 0;
  var secondNum = 0;
  String history = '';
  String textToDisplay = '';
  String res = '';
  String operation = '';
  String useless = '';

  void btnOnClick(String btnVal) {
    if (btnVal == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else if (btnVal == '+/-') {
      if (textToDisplay[0] != '-') {
        res = '-$textToDisplay';
        history = res;
      } else {
        res = textToDisplay.substring(1);
        history = res;
      }
    } else if (btnVal == '<') {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
      history = res;
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
      history = firstNum.toString() + operation.toString();
    } else if (btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'X') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
      useless = (int.parse(res) % 10).toString();
      if (history.contains('+') ||
          history.contains('-') ||
          history.contains('X') ||
          history.contains('/')) {
        history += useless;
      } else {
        history = int.parse(textToDisplay + btnVal).toString();
      }
      useless = '';
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        title: 'Calculator',
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Text('Task1 : Calculator'),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: double.infinity,
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: Card(
                    color: Colors.black,
                    elevation: 15,
                    shadowColor: Colors.grey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                history,
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                textToDisplay,
                                style: const TextStyle(
                                  fontSize: 50,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        btnOnClick('AC');
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 38,
                        child: Text(
                          'AC',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        btnOnClick('C');
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 38,
                        child: Text(
                          'C',
                          style: TextStyle(
                            fontSize: 27,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        btnOnClick('<');
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 38,
                        child: Text(
                          '<',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        btnOnClick('/');
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 38,
                        child: Text(
                          '/',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        btnOnClick('7');
                      },
                      child: const CircleAvatar(
                        radius: 38,
                        child: Text(
                          '7',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        btnOnClick('8');
                      },
                      child: const CircleAvatar(
                        radius: 38,
                        child: Text(
                          '8',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        btnOnClick('9');
                      },
                      child: const CircleAvatar(
                        radius: 38,
                        child: Text(
                          '9',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        btnOnClick('X');
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 38,
                        child: Text(
                          'X',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        btnOnClick('4');
                      },
                      child: const CircleAvatar(
                        radius: 38,
                        child: Text(
                          '4',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        btnOnClick('5');
                      },
                      child: const CircleAvatar(
                        radius: 38,
                        child: Text(
                          '5',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        btnOnClick('6');
                      },
                      child: const CircleAvatar(
                        radius: 38,
                        child: Text(
                          '6',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        btnOnClick('-');
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 38,
                        child: Text(
                          '-',
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        btnOnClick('1');
                      },
                      child: const CircleAvatar(
                        radius: 38,
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        btnOnClick('2');
                      },
                      child: const CircleAvatar(
                        radius: 38,
                        child: Text(
                          '2',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        btnOnClick('3');
                      },
                      child: const CircleAvatar(
                        radius: 38,
                        child: Text(
                          '3',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        btnOnClick('+');
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 38,
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        btnOnClick('+/-');
                      },
                      child: const CircleAvatar(
                        radius: 38,
                        child: Text(
                          '+/-',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        btnOnClick('0');
                      },
                      child: const CircleAvatar(
                        radius: 38,
                        child: Text(
                          '0',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        btnOnClick('00');
                      },
                      child: const CircleAvatar(
                        radius: 38,
                        child: Text(
                          '00',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        btnOnClick('=');
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 38,
                        child: Text(
                          '=',
                          style: TextStyle(
                            fontSize: 30,
                            // color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
