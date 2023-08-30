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
    return const SafeArea(
      child: MaterialApp(
        home: Scaffold(
          body: Center(
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text('Hello world'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
