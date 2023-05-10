import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleContainer extends StatelessWidget {
  final String? title;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final double? width;
  const TitleContainer({
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
      height: ScreenUtil().setHeight(height ?? 100),
      width: ScreenUtil().setHeight(width ?? 150),
      child: Center(
        child: Text(
          title ?? "Title",
          style: TextStyle(
            color: textColor ?? Colors.black,
            fontWeight: fontWeight ?? FontWeight.w700,
            fontSize: ScreenUtil().setSp(fontSize ?? 28),
            overflow: TextOverflow.visible,
          ),
        ),
      ),
    );
  }
}
