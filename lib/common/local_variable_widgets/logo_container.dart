import 'dart:typed_data';

import 'package:flutter/material.dart';

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
      height: height ?? 90,
      width: width ?? 150,
      margin: margin ??
          const EdgeInsets.only(
            right: 20.0,
          ),
      child: Image.network(
        url ?? "",
        fit: BoxFit.fill,
      ),
    );
  }
}
