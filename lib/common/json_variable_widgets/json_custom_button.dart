import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JsonCustomButton extends StatefulWidget {
  final String? text;
  final Color? textColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? buttonBackroundColor;
  final Function()? onClick;
  const JsonCustomButton({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.textColor,
    this.buttonBackroundColor,
    this.onClick,
  });

  @override
  State<JsonCustomButton> createState() => _JsonCustomButtonState();
}

class _JsonCustomButtonState extends State<JsonCustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.buttonBackroundColor ?? Colors.amber,
      ),
      onPressed: widget.onClick ?? () {},
      child: Text(
        widget.text ?? "",
        style: TextStyle(
          color: widget.textColor ?? Colors.white,
          fontWeight: widget.fontWeight ?? FontWeight.w400,
          fontSize: ScreenUtil().setSp(widget.fontSize ?? 14),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
