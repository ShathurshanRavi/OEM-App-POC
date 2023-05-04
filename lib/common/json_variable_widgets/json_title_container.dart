import 'package:flutter/material.dart';

class JsonTitleContainer extends StatelessWidget {
  final String? title;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final double? width;
  const JsonTitleContainer({
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
      height: height ?? 100,
      width: width ?? 150,
      child: Center(
        child: Text(
          title ?? "Title",
          style: TextStyle(
            color: textColor ?? Colors.black,
            fontWeight: fontWeight ?? FontWeight.w700,
            fontSize: fontSize ?? 28,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
