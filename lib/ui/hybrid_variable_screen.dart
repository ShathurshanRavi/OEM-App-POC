import 'package:flutter/material.dart';
import 'package:oem_app_poc/common/color_convert.dart';
import 'package:oem_app_poc/common/json_variable_widgets/json_bottom_text_container.dart';
import 'package:oem_app_poc/common/json_variable_widgets/json_common_text_field.dart';
import 'package:oem_app_poc/common/json_variable_widgets/json_custom_button.dart';
import 'package:oem_app_poc/common/json_variable_widgets/json_logo_container.dart';
import 'package:oem_app_poc/common/json_variable_widgets/json_title_container.dart';
import 'package:oem_app_poc/common/variable_list/alignment_variable.dart';
import 'package:oem_app_poc/models/asiri_config_model.dart';

class HybridScreen extends StatelessWidget {
  final AsiriConfigs? configVariables;
  const HybridScreen({
    super.key,
    required this.configVariables,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor.fromHex(configVariables?.pageBackroundColor),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: configVariables?.pagePaddingLeft ??
                  AsiriAlignmentVariableList().pagePaddingLeft,
              right: configVariables?.pagePaddingRight ??
                  AsiriAlignmentVariableList().pagePaddingRight,
              top: configVariables?.pagePaddingTop ??
                  AsiriAlignmentVariableList().pagePaddingTop,
              bottom: configVariables?.pagePaddingBottom ??
                  AsiriAlignmentVariableList().pagePaddingBottom,
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
                      textColor:
                          HexColor.fromHex(configVariables?.titleTextColor),
                      height: configVariables?.titleContainerHeight,
                      width: configVariables?.titleContainerWidth0,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: configVariables?.lableContainerMarginTop ??
                        AsiriAlignmentVariableList().lableContainerMarginTop,
                  ),
                  height: configVariables?.lableContainerHeight,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      JsonCommonTextField(
                        labelText: configVariables?.labelText1,
                        fontSize: configVariables?.lableTextFontSize,
                        textColor:
                            HexColor.fromHex(configVariables?.lableTextColor),
                      ),
                      JsonCommonTextField(
                        labelText: configVariables?.labelText2,
                        fontSize: configVariables?.lableTextFontSize,
                        textColor:
                            HexColor.fromHex(configVariables?.lableTextColor),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: configVariables?.buttonContainerHeight,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    bottom: configVariables?.buttonMarginBottom ??
                        AsiriAlignmentVariableList().buttonMarginBottom,
                  ),
                  child: JsonCustomButton(
                    text: configVariables?.buttonText,
                    buttonBackroundColor:
                        HexColor.fromHex(configVariables?.buttonBackroundColor),
                    fontSize: configVariables?.buttonTextFontSize,
                    textColor:
                        HexColor.fromHex(configVariables?.buttonTextColor),
                  ),
                ),
                JsonBottomTextContainer(
                  height: configVariables?.bottomTextContainerHeight,
                  bottomText: configVariables?.bottomText,
                  fontSize: configVariables?.bottomTextFontSize,
                  textColor:
                      HexColor.fromHex(configVariables?.bottomTextFontColor),
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
