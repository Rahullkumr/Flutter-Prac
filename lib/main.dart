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
        backgroundColor: Colors.brown,
        body: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/me.png'),
              ),
              Text(
                "Rahul Kumar",
                style: TextStyle(
                  fontFamily: 'Filxgirl',
                  fontSize: 40,
                  color: Colors.white,
                ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
