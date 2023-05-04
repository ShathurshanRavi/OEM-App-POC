import 'package:flutter/material.dart';
import 'package:oem_app_poc/home_page.dart';
import 'package:oem_app_poc/ui/json_variable_ui.dart';
import 'package:oem_app_poc/ui/local_variable_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePageScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        LocalVariableListScreen.routeName: (ctx) =>
            const LocalVariableListScreen(),
        JsonVariableListScreen.routeName: (ctx) =>
            const JsonVariableListScreen(),
      },
    );
  }
}
