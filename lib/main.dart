import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Container's decoration's 6 properties"),
          ),
          backgroundColor: Colors.black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                    child: const Center(
                      child: Text(
                        '1. A solid color background\n\n\ndecoration: const BoxDecoration(\n\tcolor: Colors.red,\n)',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.indigo,
                        width: 5.0,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        '2. With border\n\n\n decoration: BoxDecoration( \n\tborder: Border.all(\n\t\tcolor: Colors.indigo,\n\t\twidth: 5.0,\n\t),\n)',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        '3. With rounded border\n\n\ndecoration: BoxDecoration(\n\tborderRadius: BorderRadius.circular(20),\n)',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.yellow,
                    child: const Text('4'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.teal,
                    child: const Text('5'),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.purple,
                    child: const Text('6'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
