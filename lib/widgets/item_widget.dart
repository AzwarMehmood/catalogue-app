import 'package:flutter/material.dart';
import '../models/catalogue.dart';

class itemWidget extends StatelessWidget {
  final Item item;

  const itemWidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("Pressed The Button");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.avail),
        trailing: Text("\$${item.price}"),
      ),
    );
  }
}
