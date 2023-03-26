import 'package:erpapp/pages/home_page.dart';
import 'package:erpapp/pages/mytask.dart';
import 'package:erpapp/pages/profile.dart';
import 'package:erpapp/pages/routes.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/":(context)=> const HomePage(),
        MyRoutes.homeRoute: (context)=> const HomePage(),
        MyRoutes.profileRoute: (context)=> MyProfile(),
        MyRoutes.taskRoute : (context) => MyTask(),

      },
    );
  }
}

