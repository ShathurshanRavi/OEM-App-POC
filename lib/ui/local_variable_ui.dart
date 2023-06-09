import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oem_app_poc/common/variable_list/alignment_variable.dart';
import 'package:oem_app_poc/common/variable_list/color_variable.dart';
import 'package:oem_app_poc/common/variable_list/size_variable.dart';
import 'package:oem_app_poc/common/variable_list/text_variable.dart';
import 'package:oem_app_poc/common/local_variable_widgets/bottom_text_container.dart';
import 'package:oem_app_poc/common/local_variable_widgets/common_text_field.dart';
import 'package:oem_app_poc/common/local_variable_widgets/custom_button.dart';
import 'package:oem_app_poc/common/local_variable_widgets/logo_container.dart';
import 'package:oem_app_poc/common/local_variable_widgets/title_container.dart';

class LocalVariableListScreen extends StatelessWidget {
  static const routeName = '/approach1';
  const LocalVariableListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AsiriColorVariableList().pageBackroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AsiriAlignmentVariableList().pagePadding,
            child: Column(
              children: [
                Row(
                  children: [
                    LogoContainer(
                      url: AsiriTextVaribleList().logoUrl,
                      margin: AsiriAlignmentVariableList().logoMargin,
                      height: AsiriAlignmentVariableList().logoHeight,
                      width: AsiriAlignmentVariableList().logoWidth,
                    ),
                    TitleContainer(
                      title: AsiriTextVaribleList().title,
                      fontSize: AsiriSizeVariableList().titleFontSize,
                      textColor: AsiriColorVariableList().titleTextColor,
                      height: AsiriAlignmentVariableList().titleContainerHeight,
                      width: AsiriAlignmentVariableList().titleContainerWidth,
                    ),
                  ],
                ),
                Container(
                  margin: AsiriAlignmentVariableList().lableContainerMargin,
                  height: ScreenUtil().setHeight(
                      AsiriAlignmentVariableList().lableContainerHeight),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CommonTextField(
                        labelText: AsiriTextVaribleList().labelText1,
                        fontSize: AsiriSizeVariableList().lableTextFontSize,
                        textColor: AsiriColorVariableList().lableTextColor,
                      ),
                      CommonTextField(
                        labelText: AsiriTextVaribleList().labelText2,
                        fontSize: AsiriSizeVariableList().lableTextFontSize,
                        textColor: AsiriColorVariableList().lableTextColor,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: ScreenUtil().setHeight(AsiriAlignmentVariableList().buttonContainerHeight),
                  width: ScreenUtil().setWidth(double.infinity),
                  margin: AsiriAlignmentVariableList().lableContainerMargin,
                  child: CustomButton(
                    text: AsiriTextVaribleList().buttonText,
                    buttonBackroundColor:
                        AsiriColorVariableList().buttonBackroundColor,
                    fontSize: AsiriSizeVariableList().buttonTextFontSize,
                    textColor: AsiriColorVariableList().buttonTextColor,
                  ),
                ),
                BottomTextContainer(
                  height:
                      AsiriAlignmentVariableList().bottomTextContainerHeight,
                  bottomText: AsiriTextVaribleList().bottomText,
                  fontSize: AsiriSizeVariableList().bottomTextFontSize,
                  textColor: AsiriColorVariableList().bottomTextFontColor,
                  margin:
                      AsiriAlignmentVariableList().bottomTextContainerMargin,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
