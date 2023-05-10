import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oem_app_poc/common/variable_list/alignment_variable.dart';
import 'package:oem_app_poc/common/variable_list/size_variable.dart';
import 'package:oem_app_poc/common/variable_list/text_variable.dart';

class HybridBottomTextContainer extends StatelessWidget {
  final String? bottomText;
  final Color? textColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? marginBottom;
  final double? height;
  final double? width;
  const HybridBottomTextContainer({
    super.key,
    required this.bottomText,
    this.fontSize,
    this.fontWeight,
    this.textColor,
    this.marginBottom,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(
          height ?? AsiriAlignmentVariableList().bottomTextContainerHeight),
      width: ScreenUtil().setWidth(width ?? double.infinity),
      margin: EdgeInsets.only(
        bottom: ScreenUtil().setWidth(marginBottom ??
            AsiriAlignmentVariableList().bottomTextContainerMarginBottom),
      ),
      child: Center(
        child: Text(
          bottomText ?? AsiriTextVaribleList().bottomText,
          style: TextStyle(
            color: textColor ?? Colors.black,
            fontWeight: fontWeight ?? FontWeight.w400,
            fontSize: ScreenUtil()
                .setSp(fontSize ?? AsiriSizeVariableList().bottomTextFontSize),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
