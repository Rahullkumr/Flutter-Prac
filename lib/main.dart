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
                Container(
                  height: 1,
                  width: 150,
                  margin: const EdgeInsets.only(
                    top: 10,
                  ),
                  color: Colors.white,
                ),
                Container(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 25,
                  ),
                  padding: const EdgeInsets.all(7),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 20,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '+91 9798295265',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(7),
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 25,
                  ),
                  color: Colors.white,
                  child: const Row(
                    children: [
                      Icon(
                        Icons.email,
                        size: 20,
                        color: Colors.black,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'rahulbkba@gmail.com',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
