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
        backgroundColor: Colors.grey[900],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.lightBlue,
                height: 100.0,
                width: double.infinity,
                child: const Text("container 1"),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                color: Colors.lightGreen,
                height: 100.0,
                width: 300.0,
                child: const Text("container 2"),
              ),
              Container(
                color: Colors.indigoAccent,
                height: 100.0,
                width: 200.0,
                child: const Text("container 3"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
