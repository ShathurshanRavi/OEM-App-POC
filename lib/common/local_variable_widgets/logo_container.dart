import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoContainer extends StatelessWidget {
  final String? url;
  final BoxFit? boxFit;
  final double? height;
  final double? width;
  final EdgeInsets? margin;
  final Uint8List? bytes;
  const LogoContainer({
    super.key,
    this.url,
    this.boxFit,
    this.height,
    this.width,
    this.margin,
    this.bytes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(height ?? 90),
      width: ScreenUtil().setWidth(width ?? 150),
      margin: margin ??
          EdgeInsets.only(
            right: ScreenUtil().setWidth(20),
          ),
      child: Image.network(
        url ?? "",
        fit: BoxFit.fill,
      ),
    );
  }
}
