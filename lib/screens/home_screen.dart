import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String ask = "My dear, How are you?";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalogue App"),
      ),
      body: Center(
        child: Container(
          child: Text("$ask"),        ),
      ),
      drawer: Drawer(),
    );
  }
}
