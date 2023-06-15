// To parse this JSON data, do
//
//     final dataModelResponse = dataModelResponseFromJson(jsonString);

import 'dart:convert';

DataModelResponse dataModelResponseFromJson(String str) =>
    DataModelResponse.fromJson(json.decode(str));

String dataModelResponseToJson(DataModelResponse data) =>
    json.encode(data.toJson());

class DataModelResponse {
  String username;
  String password;
  String id;

  DataModelResponse({
    required this.username,
    required this.password,
    required this.id,
  });

  factory DataModelResponse.fromJson(Map<String, dynamic> json) =>
      DataModelResponse(
        username: json["username"],
        password: json["password"],
        id: json["_id"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
        "_id": id,
      };
}
