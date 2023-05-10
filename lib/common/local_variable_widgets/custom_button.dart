import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatefulWidget {
  final String? text;
  final Color? textColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? buttonBackroundColor;
  final Function()? onClick;
  const CustomButton({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.textColor,
    this.buttonBackroundColor,
    this.onClick,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
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
