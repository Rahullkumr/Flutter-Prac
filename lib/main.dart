import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        centerTitle: true,
      ),
      body: const Counter(),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(60),
            elevation: 20,
            shadowColor: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                '$num',
                style: const TextStyle(
                  fontSize: 40,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                num = num + 1;
              });
            },            
            child: const Text('Increase'),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  num = num - 1;
                });
              },
              child: const Text('Decrease'),
            ),
          )
        ],
      ),
    );
  }
}
