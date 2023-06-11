import 'package:catalogue_app/screens/home_screen.dart';
import 'package:catalogue_app/screens/login_screen.dart';
import 'package:catalogue_app/utils/routes.dart';
import 'package:catalogue_app/widgets/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        MyRoutes.homeRoute: (context) => Home(),
        MyRoutes.loginRoute: (context) => LoginScreen(),
      },
    );
  }
}
