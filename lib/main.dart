import 'package:basicflutter/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(colors: [
        Color.fromARGB(255, 100, 50, 30),
        Color.fromARGB(255, 200, 300, 200)
      ]),
    ),
  ));
}
