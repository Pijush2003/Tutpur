import 'package:flutter/material.dart';
import 'package:flutter_demo/home_page.dart';
import 'package:flutter_demo/login_page.dart';
import 'package:flutter_demo/utlies/routes.dart';

void main(List<String> args) {
  runApp(const DemoApp());
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: MyRoutes.HomePage,
      routes: {
        "": (context) => LoginPage(),
        MyRoutes.HomePage: (context) => HomePage(),
        MyRoutes.LoginPage: (context) => LoginPage()
      },
    );
  }
}
