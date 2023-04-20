import 'dart:developer';

import 'package:foodapp/UserModel.dart';
import 'package:foodapp/contants.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<UserModel>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<UserModel> _model = UserModelFromJson(response.body);
        print(_model);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
