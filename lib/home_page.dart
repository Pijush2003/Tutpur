import 'package:flutter/material.dart';
import 'package:flutter_demo/models/tutpur.dart';
import 'package:flutter_demo/widgets/drawer.dart';
import 'package:flutter_demo/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  int days = 1;
  String name = "tutpur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tutpur"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: tutpurModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: tutpurModel.items[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
