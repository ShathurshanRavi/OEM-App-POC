import 'dart:convert';

import 'package:http/http.dart' as http;

Future<String?> networkImageToBase64(String? imageUrl) async {
  var image = Uri.parse(imageUrl ??
      "https://www.asirihealth.com/templates/assets/images/home-new/asiri-helath-logo.png");
  http.Response response = await http.get(image);
  final bytes = response.bodyBytes;
  return base64Encode(bytes);
}


