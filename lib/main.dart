import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Container> myList = List.generate(
    90,
    (index) {
      return Container(
        height: 50,
        width: 150,
        color: Color.fromARGB(
          200,
          Random().nextInt(201),
          Random().nextInt(202),
          Random().nextInt(203),
        ),
      );
    },
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MARIA EVITA SAIN"),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 10,
            childAspectRatio: 4 / 3,
          ),
          children: myList,
        ),
      ),
    );
  }
}
