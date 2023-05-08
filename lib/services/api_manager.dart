import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:oem_app_poc/common/api/api_string.dart';
import 'package:oem_app_poc/common/custom_snack_bar.dart';
import 'package:oem_app_poc/models/asiri_config_model.dart';

class ApiManager {
  Future<AsiriConfigs?> getConfigs(BuildContext context) async {
    AsiriConfigs? configModel;
    http.Response response;

    try {
      response = await http.get(ApiStrings.popularMovieUrl);
      if (response.statusCode == 200) {
        var jsonSring = response.body;
        var jsonMap = json.decode(jsonSring);
        configModel = AsiriConfigs.fromJson(jsonMap);
      }
    } catch (e) {
      showSnackBarToScreen(e.toString());
    }
    return configModel;
  }
}
