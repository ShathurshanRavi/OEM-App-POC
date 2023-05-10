import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonTextField extends StatelessWidget {
  final String? labelText;
  final Color? textColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  const CommonTextField({
    super.key,
    required this.labelText,
    this.textColor,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
        labelStyle: TextStyle(
          color: textColor ?? Colors.green,
          fontWeight: fontWeight ?? FontWeight.w300,
          fontSize: ScreenUtil().setSp(fontSize ?? 14),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
