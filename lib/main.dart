import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const DemoApp());
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
          child: Text("Welcome to tutpur"),
          ),
        ),
      ),
    );
  }
}