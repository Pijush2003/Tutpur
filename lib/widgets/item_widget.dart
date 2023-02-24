import 'package:flutter/material.dart';
import 'package:flutter_demo/models/tutpur.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({key, required this.item})
      : assert(item != null),
        super(key: key);
  // const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.yellowAccent,
      child: ListTile(
        onTap: () {
          print("${item.name}");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.Description),
        trailing: Text("\$${item.price}"),
      ),
    );
  }
}
