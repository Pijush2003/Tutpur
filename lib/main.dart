import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/home_page.dart';

void main(List<String> args) {
  runApp(const DemoApp());
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
   

    return MaterialApp(
      home: HomePage(),
    );
    
  }
}
