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
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey[900],
                  backgroundImage: const AssetImage('images/me.png'),
                ),
                const Text(
                  "Rahul Kumar",
                  style: TextStyle(
                    fontFamily: 'Filxgirl',
                    fontSize: 40,
                    letterSpacing: 1,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  "FLUTTER DEVELOPER",
                  style: TextStyle(
                    fontFamily: 'Ysabeau',
                    color: Colors.white,
                    fontSize: 17,
                    letterSpacing: 3,
                  ),
                ),
                Container(height: 10,),
                Container(
                  height: 1,
                  width: 150,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
