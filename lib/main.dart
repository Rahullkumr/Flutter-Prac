import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.blue[900],
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.blue[900],
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.blue[900],
                  ),
                  const SizedBox(),
                ],
              ),
            ),
            Container(
              height: 130,
              decoration: BoxDecoration(
                color: Colors.blue[900],
              ),
            ),
            Container(
              height: 130,
              decoration: BoxDecoration(
                color: Colors.blue[900],
              ),
            ),
            Container(
              height: 130,
              decoration: BoxDecoration(
                color: Colors.blue[900],
              ),
            ),
            Container(
              height: 130,
              decoration: BoxDecoration(
                color: Colors.blue[900],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
