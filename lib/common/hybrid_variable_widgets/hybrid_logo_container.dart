import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oem_app_poc/common/variable_list/alignment_variable.dart';
import 'package:oem_app_poc/common/variable_list/text_variable.dart';

class HybridLogoContainer extends StatelessWidget {
  final String? url;
  final BoxFit? boxFit;
  final double? height;
  final double? width;
  final double? marginRight;
  final Uint8List? bytes;
  const HybridLogoContainer({
    super.key,
    this.url,
    this.boxFit,
    this.height,
    this.width,
    this.marginRight,
    this.bytes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil()
          .setHeight(height ?? AsiriAlignmentVariableList().logoHeight),
      width: ScreenUtil()
          .setWidth(width ?? AsiriAlignmentVariableList().logoWidth),
      margin: EdgeInsets.only(
        right: ScreenUtil().setWidth(
            marginRight ?? AsiriAlignmentVariableList().logoMarginRight),
      ),
      child: Image.network(
        url ?? AsiriTextVaribleList().logoUrl,
        fit: BoxFit.fill,
      ),
    );
  }
}
