import 'package:flutter/material.dart';
import 'package:oem_app_poc/models/asiri_config_model.dart';
import 'package:oem_app_poc/services/api_manager.dart';
import 'package:oem_app_poc/ui/json_variable_screen.dart';

class JsonVariableListScreen extends StatefulWidget {
  static const routeName = '/approach2';

  const JsonVariableListScreen({
    super.key,
  });

  @override
  State<JsonVariableListScreen> createState() => _JsonVariableListScreenState();
}

class _JsonVariableListScreenState extends State<JsonVariableListScreen> {
  @override
  void initState() {
    super.initState();
    ApiManager().getConfigs(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<AsiriConfigs?>(
        future: ApiManager().getConfigs(context),
        builder: (context, AsyncSnapshot<AsiriConfigs?> snapshot) {
          AsiriConfigs? configs = snapshot.data;
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(),
                  Text('Loading'),
                ],
              ),
            );
          } else {
            return JsonScreen(
              configVariables: configs,
            );
          }
        },
      ),
    );
  }
}
