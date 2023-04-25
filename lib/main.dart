import 'package:catalogue_app/screens/home_screen.dart';
import 'package:catalogue_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.teal),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/login",
      routes: {
        "/": (context) => LoginScreen(),
        "/home": (context) => Home(),
        "/login": (context) => LoginScreen(),
      },
    );
  }
}
