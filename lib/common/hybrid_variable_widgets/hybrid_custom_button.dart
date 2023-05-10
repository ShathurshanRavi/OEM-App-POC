import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oem_app_poc/common/variable_list/color_variable.dart';
import 'package:oem_app_poc/common/variable_list/size_variable.dart';
import 'package:oem_app_poc/common/variable_list/text_variable.dart';

class HybridCustomButton extends StatefulWidget {
  final String? text;
  final Color? textColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? buttonBackroundColor;
  final Function()? onClick;
  const HybridCustomButton({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.textColor,
    this.buttonBackroundColor,
    this.onClick,
  });

  @override
  State<HybridCustomButton> createState() => _HybridCustomButtonState();
}

class _HybridCustomButtonState extends State<HybridCustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.buttonBackroundColor ??
            AsiriColorVariableList().buttonBackroundColor,
      ),
      onPressed: widget.onClick ?? () {},
      child: Text(
        widget.text ?? AsiriTextVaribleList().buttonText,
        style: TextStyle(
          color: widget.textColor ?? AsiriColorVariableList().buttonTextColor,
          fontWeight: widget.fontWeight ?? FontWeight.w400,
          fontSize: ScreenUtil().setSp(
              widget.fontSize ?? AsiriSizeVariableList().buttonTextFontSize),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
