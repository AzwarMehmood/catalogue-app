import 'package:catalogue_app/models/catalogue.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class Home extends StatelessWidget {
  final String ask = "My dear, How are you?";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(6, (index) => CatalogueModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalogue App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (Context, index) {
              return itemWidget(
                item: dummyList[index],
              );
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
