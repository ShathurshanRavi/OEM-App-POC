import 'package:flutter/material.dart';

class BottomTextContainer extends StatelessWidget {
  final String? bottomText;
  final Color? textColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final EdgeInsets? margin;
  final double? height;
  final double? width;
  const BottomTextContainer({
    super.key,
    required this.bottomText,
    this.fontSize,
    this.fontWeight,
    this.textColor,
    this.margin,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 200,
      width: width ?? double.infinity,
      margin: margin ??
          const EdgeInsets.only(
            bottom: 20.0,
          ),
      child: Center(
        child: Text(
          bottomText ?? "Copyright Statement",
          style: TextStyle(
            color: textColor ?? Colors.black,
            fontWeight: fontWeight ?? FontWeight.w400,
            fontSize: fontSize ?? 18,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
