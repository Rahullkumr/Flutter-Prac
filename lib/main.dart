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
            title: const Text("Container's decoration properties"),
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
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green,
                          offset: Offset(0, 10),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        '4. With shadow\n\ndecoration: const BoxDecoration(\ncolor: Colors.yellow,\nboxShadow: [\nBoxShadow(\ncolor: Colors.green,\noffset: Offset(0, 10),\nblurRadius: 10,\n),\n],\n)',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.red, Colors.green],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: const Text(
                      '5. With a gradient background\n\ndecoration: const BoxDecoration(\ngradient: LinearGradient(\ncolors: [Colors.red, Colors.green],\nbegin: Alignment.topLeft,\nend: Alignment.bottomRight,\n),\n)',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/me.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Text(
                      "6. With an image\n\ndecoration: const BoxDecoration(\nimage: DecorationImage(\nimage: AssetImage('images/me.png'),\nfit: BoxFit.cover,\n),\n)",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
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
