import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const JsonVariableListScreen(
            isApproach2: true,
          );
        },
      ),
    );
  }

  void hybridScreenNavigation() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const JsonVariableListScreen(
            isApproach2: false,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: ScreenUtil().setHeight(250.0),
          bottom: ScreenUtil().setHeight(250.0),
          left: ScreenUtil().setWidth(30.0),
          right: ScreenUtil().setWidth(30.0),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(70),
                width: double.infinity,
                child: CustomButton(
                  text: "Approach 1",
                  onClick: localScreenNavigation,
                  buttonBackroundColor: Colors.blue,
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(70),
                width: double.infinity,
                child: CustomButton(
                  text: "Approach 2",
                  onClick: jsonScreenNavigation,
                  buttonBackroundColor: Colors.blue,
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(70),
                width: double.infinity,
                child: CustomButton(
                  text: "Approach 3",
                  onClick: hybridScreenNavigation,
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
