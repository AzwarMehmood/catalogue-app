import 'dart:convert';
import 'package:catalogue_app/models/catalogue.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String ask = "My dear, How are you?";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 4));
    final catalogueJson =
        await rootBundle.loadString("assets/files/catalogue.json");
     final decodedData = jsonDecode(catalogueJson);
    var productsData = decodedData["products"];
    CatalogueModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalogue App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: (CatalogueModel.items != null && CatalogueModel.items.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogueModel.items.length,
                itemBuilder: (Context, index) {
                  return itemWidget(
                    item: CatalogueModel.items[index],
                  );
                })
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
