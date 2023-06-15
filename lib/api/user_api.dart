import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_mini_topics/model/data_model.dart';
import 'package:http/http.dart' as http;

//used https://crudcrud.com/ crud crud for dummy url
class UserApi {
  static Future<List<DataModel>> fetchUsers() async {
    final response = await http.get(Uri.parse(
        "https://crudcrud.com/api/acf76f6cfdb94d8bbc2f3cb076eed8ab%2Fusersdatalist"));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body) as List<dynamic>;
      final users = jsonData.map((json) => DataModel.fromJson(json)).toList();
      return users;
    } else {
      throw Exception(
          "Failed to fetch user, something went wrong${response.statusCode}");
    }
  }

  static Future<String> postData(username, email, password) async {
    final url = Uri.parse(
        "https://crudcrud.com/api/acf76f6cfdb94d8bbc2f3cb076eed8ab%2Fusersdatalist");

    final headers = <String, String>{'Content-Type': 'application/json'};
    final body = jsonEncode(<String, dynamic>{
      "username": username,
      "email": email,
      "password": password
    });

    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 201) {
      debugPrint(response.body.toString());
      return "success";

      // print("post request was successful");
    } else {
      throw Exception(
          "Failed to post user, something went wrong${response.statusCode}");
    }
  }
}
