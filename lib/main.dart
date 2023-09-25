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
            title: const Text('Task2: Temperature Converter'),
            centerTitle: true,
          ),
          body: const UserInterface(),
        ),
      ),
    );
  }
}

class UserInterface extends StatefulWidget {
  const UserInterface({super.key});

  @override
  State<UserInterface> createState() => _UserInterfaceState();
}

class _UserInterfaceState extends State<UserInterface> {
  String cel = '0';
  String fah = '0';
  String kel = '0';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(10, 40, 10, 30),
          child: Text(
            'Input temperature (any one)',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            color: Colors.cyan,
            child: ListTile(
              leading: const Text(
                'Celsius',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              title: TextField(
                onChanged: (value) {
                  cel = value;
                },
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            color: Colors.cyan,
            child: ListTile(
              leading: const Text(
                'Fahrenheit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              title: TextField(
                onChanged: (value) {
                  fah = value;
                },
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            color: Colors.cyan,
            child: ListTile(
              leading: const Text(
                'Kelvin',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              title: TextField(
                onChanged: (value) {
                  kel = value;
                },
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "convert",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Card(
              color: Colors.cyan,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Celsius',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                    child: Text(
                      cel,
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.cyan,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Fahrenheit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                    child: Text(
                      fah,
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.cyan,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Kelvin',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                    child: Text(
                      kel,
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
