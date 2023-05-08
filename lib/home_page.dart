import 'package:flutter/material.dart';
import 'package:oem_app_poc/common/local_variable_widgets/custom_button.dart';

import 'package:oem_app_poc/ui/json_variable_ui.dart';
import 'package:oem_app_poc/ui/local_variable_ui.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  void localScreenNavigation() {
    Navigator.of(context).pushNamed(LocalVariableListScreen.routeName);
  }

  void jsonScreenNavigation() {
    Navigator.of(context).pushNamed(JsonVariableListScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 250.0,
          bottom: 250.0,
          left: 30.0,
          right: 30.0,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
                width: double.infinity,
                child: CustomButton(
                  text: "Approach 1",
                  onClick: localScreenNavigation,
                  buttonBackroundColor: Colors.blue,
                ),
              ),
              SizedBox(
                height: 70,
                width: double.infinity,
                child: CustomButton(
                  text: "Approach 2",
                  onClick: jsonScreenNavigation,
                  buttonBackroundColor: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
