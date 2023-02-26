import 'package:flutter/material.dart';
import 'package:erpapp/pages/routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=> HomePage(),
        MyRoutes.homeRoute: (context)=> HomePage(),
      },
      initialRoute: MyRoutes.homeRoute,
    );
  }
}

