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
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: CircleAvatar(
              radius: 100,
              child: Image(
                image: AssetImage('images/pro.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
