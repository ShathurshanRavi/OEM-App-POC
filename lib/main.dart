import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return ScreenUtilInit(
      // The default size configured based on the iPhone 12 Pro size
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
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
      },
    );
  }
}
