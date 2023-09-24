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
            title: const Text('Temperature Converter'),
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
  String cel = '';
  String fah = '';
  String kel = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'Input temperature (any one)',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
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
                ),
              ),
              title: TextField(
                onChanged: (value) {
                  setState(() {
                    kel = value;
                  });
                },
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
            onPressed: () {},
            // ignore: prefer_const_constructors
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: const Text("convert"),
            ),
          ),
        ),
        Card(
          child: Text(kel),
        ),
      ],
    );
  }
}
