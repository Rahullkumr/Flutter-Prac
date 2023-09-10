import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNo = 1;
  int rightDiceNo = 1;
  @override
  Widget build(BuildContext context) {
    void changeDiceNO() {
      setState(() {
        leftDiceNo = Random().nextInt(6) + 1;
        rightDiceNo = Random().nextInt(6) + 1;
      });
    }

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceNO();
              },
              child: Image.asset('images/dice$leftDiceNo.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceNO();
              },
              child: Image.asset('images/dice$rightDiceNo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
