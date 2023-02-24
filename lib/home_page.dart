import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  int days = 1;
  String name = "tutpur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tutpur"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $name day $days"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
