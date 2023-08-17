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
          backgroundColor: Colors.grey[900],
        ),
        body: const Center(
          child: Image(
            // acts as an empty frame of any real world photo
            image: NetworkImage('https://picsum.photos/id/28/300'),
          ),
        ),
      ),
    ),
  );
}
