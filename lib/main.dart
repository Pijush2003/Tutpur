// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_demo/home_page.dart';
import 'package:flutter_demo/login_page.dart';
import 'package:flutter_demo/utlies/routes.dart';
import 'package:flutter_demo/widgets/themes.dart';

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
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.HomePage,
      routes: {
        "": (context) => LoginPage(),
        MyRoutes.HomePage: (context) => HomePage(),
        MyRoutes.LoginPage: (context) => LoginPage()
      },
    );
  }
}
