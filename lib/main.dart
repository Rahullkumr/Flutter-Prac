import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "home me dikhega",
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 400,
            width: 400,
            color: Colors.grey[300],
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 5,
                      color: Colors.orange,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                      child: Row(
                        children: [
                          const Column(
                            children: [
                              Row(
                                children: [
                                  Text('Banking'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Debit amount'),
                                ],
                              ),
                            ],
                          ),
                          const Text(
                            '35.00',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 1,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Your a/c XXXXXXXXXX8909 debited for payee',
                          style: TextStyle(
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'MANISH KUMAR for Rs. 35.00 on 2023-08-26, ....',
                          style: TextStyle(
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
