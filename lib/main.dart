import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Center(  
            child: Text("I Am Rich"),
          ),
        ),
        body: const Center(
          child: Image(
            // acts as an empty frame where an image will be kept
            image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
