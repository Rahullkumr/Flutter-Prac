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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              const SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              const Card(
                elevation: 7,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                // padding: const EdgeInsets.all(7),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 20,
                    color: Colors.black,
                  ),
                  title: Text(
                    '+91 9798295265',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const Card(
                elevation: 7,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 20,
                    color: Colors.black,
                  ),
                  title: Text(
                    'rahulbkba@gmail.com',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
