import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final int days = 20;
  final String ask = "My dear, How are you?";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Azwar's App"),
      ),
      body: Center(
        child: Container(
          child: Text("$days $ask"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
