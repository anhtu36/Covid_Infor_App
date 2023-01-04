import 'dart:convert';

import 'package:api_covid19/model/model_world_state.dart';
import 'package:api_covid19/services/utilities/app_url.dart';
import 'package:http/http.dart' as http;

class StateService {
  Future<WorldStateModel> fetchWorldStateRecord() async {
    final response = await http.get(Uri.parse(AppUrl.worldStateApi));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return WorldStateModel.fromJson(data);
    } else {
      throw Exception('Error');
    }
  }

  Future<List<dynamic>> countriesListApi() async {
    final response = await http.get(Uri.parse(AppUrl.countriesList));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('Error');
    }
  }
}
