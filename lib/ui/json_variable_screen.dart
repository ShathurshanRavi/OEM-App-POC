import 'package:flutter/material.dart';
import 'package:oem_app_poc/common/json_variable_widgets/json_bottom_text_container.dart';
import 'package:oem_app_poc/common/json_variable_widgets/json_common_text_field.dart';
import 'package:oem_app_poc/common/json_variable_widgets/json_custom_button.dart';
import 'package:oem_app_poc/common/json_variable_widgets/json_logo_container.dart';
import 'package:oem_app_poc/common/json_variable_widgets/json_title_container.dart';
import 'package:oem_app_poc/models/asiri_config_model.dart';

class JsonScreen extends StatelessWidget {
  final AsiriConfigs? configVariables;
  const JsonScreen({
    super.key,
    required this.configVariables,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AsiriColorVariableList().pageBackroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: configVariables?.pagePaddingLeft ?? 20.0,
              right: configVariables?.pagePaddingRight ?? 20.0,
              top: configVariables?.pagePaddingTop ?? 8.0,
              bottom: configVariables?.pagePaddingBottom ?? 8.0,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    JsonLogoContainer(
                      url: configVariables?.logoUrl,
                      marginRight: configVariables?.logoMarginRight,
                      height: configVariables?.logoHeight,
                      width: configVariables?.logoWidth,
                    ),
                    JsonTitleContainer(
                      title: configVariables?.title,
                      fontSize: configVariables?.titleFontSize,
                      // textColor: AsiriColorVariableList().titleTextColor,
                      height: configVariables?.titleContainerHeight,
                      width: configVariables?.titleContainerWidth0,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: configVariables?.lableContainerMarginTop ?? 20.0,
                  ),
                  height: configVariables?.lableContainerHeight,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      JsonCommonTextField(
                        labelText: configVariables?.labelText1,
                        fontSize: configVariables?.lableTextFontSize,
                        // textColor: AsiriColorVariableList().lableTextColor,
                      ),
                      JsonCommonTextField(
                        labelText: configVariables?.labelText2,
                        fontSize: configVariables?.lableTextFontSize,
                        // textColor: AsiriColorVariableList().lableTextColor,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: configVariables?.buttonContainerHeight,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    bottom: configVariables?.buttonMarginBottom ?? 20.0,
                  ),
                  child: JsonCustomButton(
                    text: configVariables?.buttonText,
                    // buttonBackroundColor:
                    //     AsiriColorVariableList().buttonBackroundColor,
                    fontSize: configVariables?.buttonTextFontSize,
                    // textColor: AsiriColorVariableList().buttonTextColor,
                  ),
                ),
                JsonBottomTextContainer(
                  height: configVariables?.bottomTextContainerHeight,
                  bottomText: configVariables?.bottomText,
                  fontSize: configVariables?.bottomTextFontSize,
                  // textColor: AsiriColorVariableList().bottomTextFontColor,
                  marginBottom:
                      configVariables?.bottomTextContainerMarginBottom,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
