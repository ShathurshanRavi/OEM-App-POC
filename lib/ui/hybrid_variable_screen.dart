import 'package:flutter/material.dart';
import 'package:oem_app_poc/common/color_convert.dart';
import 'package:oem_app_poc/common/hybrid_variable_widgets/hybrid_bottom_text_container.dart';
import 'package:oem_app_poc/common/hybrid_variable_widgets/hybrid_common_text_field.dart';
import 'package:oem_app_poc/common/hybrid_variable_widgets/hybrid_custom_button.dart';
import 'package:oem_app_poc/common/hybrid_variable_widgets/hybrid_logo_container.dart';
import 'package:oem_app_poc/common/hybrid_variable_widgets/hybrid_title_container.dart';
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
                    HybridLogoContainer(
                      url: configVariables?.logoUrl,
                      marginRight: configVariables?.logoMarginRight,
                      height: configVariables?.logoHeight,
                      width: configVariables?.logoWidth,
                    ),
                    HybridTitleContainer(
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
                      HybridCommonTextField(
                        labelText: configVariables?.labelText1,
                        fontSize: configVariables?.lableTextFontSize,
                        textColor:
                            HexColor.fromHex(configVariables?.lableTextColor),
                      ),
                      HybridCommonTextField(
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
                  child: HybridCustomButton(
                    text: configVariables?.buttonText,
                    buttonBackroundColor:
                        HexColor.fromHex(configVariables?.buttonBackroundColor),
                    fontSize: configVariables?.buttonTextFontSize,
                    textColor:
                        HexColor.fromHex(configVariables?.buttonTextColor),
                  ),
                ),
                HybridBottomTextContainer(
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
