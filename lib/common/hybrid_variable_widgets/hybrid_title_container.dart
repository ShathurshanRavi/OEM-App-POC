import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oem_app_poc/common/variable_list/alignment_variable.dart';
import 'package:oem_app_poc/common/variable_list/color_variable.dart';
import 'package:oem_app_poc/common/variable_list/size_variable.dart';
import 'package:oem_app_poc/common/variable_list/text_variable.dart';

class HybridTitleContainer extends StatelessWidget {
  final String? title;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final double? width;
  const HybridTitleContainer({
    super.key,
    required this.title,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtil().setHeight(
          height ?? AsiriAlignmentVariableList().titleContainerHeight),
      width: ScreenUtil()
          .setWidth(width ?? AsiriAlignmentVariableList().titleContainerWidth),
      child: Center(
        child: Text(
          title ?? AsiriTextVaribleList().title,
          style: TextStyle(
            color: textColor ?? AsiriColorVariableList().titleTextColor,
            fontWeight: fontWeight ?? FontWeight.w700,
            fontSize: ScreenUtil()
                .setSp(fontSize ?? AsiriSizeVariableList().titleFontSize),
            overflow: TextOverflow.visible,
          ),
        ),
      ),
    );
  }
}
