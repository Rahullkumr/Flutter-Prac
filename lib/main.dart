import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 100,
              ),
              const CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.yellow,
              ),
              Container(
                color: Colors.blue,
                // height: 70.0,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
