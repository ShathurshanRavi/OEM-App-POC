import 'package:flutter/material.dart';

class JsonCommonTextField extends StatelessWidget {
  final String? labelText;
  final Color? textColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  const JsonCommonTextField({
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
            color: textColor ?? Colors.green,
            fontWeight: fontWeight ?? FontWeight.w300,
            fontSize: fontSize ?? 14,
            overflow: TextOverflow.ellipsis,
          ),
      ),
    );
  }
}
