import 'package:flutter/material.dart';
import 'package:oem_app_poc/common/variable_list/color_variable.dart';
import 'package:oem_app_poc/common/variable_list/size_variable.dart';

class HybridCommonTextField extends StatelessWidget {
  final String? labelText;
  final Color? textColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  const HybridCommonTextField({
    super.key,
    required this.labelText,
    this.textColor,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
        labelStyle: TextStyle(
          color: textColor ?? AsiriColorVariableList().lableTextColor,
          fontWeight: fontWeight ?? FontWeight.w300,
          fontSize: fontSize ?? AsiriSizeVariableList().lableTextFontSize,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
