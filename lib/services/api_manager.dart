import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:oem_app_poc/common/api/api_string.dart';
import 'package:oem_app_poc/models/asiri_config_model.dart';

class ApiManager {
  Future<AsiriConfigs?> getConfigs() async {
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
      print(e.toString());
    }
    return configModel;
  }
}