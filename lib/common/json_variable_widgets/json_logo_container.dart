import 'dart:typed_data';

import 'package:flutter/material.dart';

class JsonLogoContainer extends StatelessWidget {
  final String? url;
  final BoxFit? boxFit;
  final double? height;
  final double? width;
  final double? marginRight;
  final Uint8List? bytes;
  const JsonLogoContainer({
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
      height: height ?? 90,
      width: width ?? 150,
      margin: EdgeInsets.only(
        right: marginRight ?? 20.0,
      ),
      child: Image.network(
        url ??
            "https://www.asirihealth.com/templates/assets/images/home-new/asiri-helath-logo.png",
        fit: BoxFit.fill,
      ),
    );
  }
}
