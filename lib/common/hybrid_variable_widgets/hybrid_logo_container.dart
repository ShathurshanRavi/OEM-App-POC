import 'dart:typed_data';

import 'package:flutter/material.dart';
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
      height: height ?? AsiriAlignmentVariableList().logoHeight,
      width: width ?? AsiriAlignmentVariableList().logoWidth,
      margin: EdgeInsets.only(
        right: marginRight ?? AsiriAlignmentVariableList().logoMarginRight,
      ),
      child: Image.network(
        url ?? AsiriTextVaribleList().logoUrl,
        fit: BoxFit.fill,
      ),
    );
  }
}
