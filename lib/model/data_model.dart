// To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);

import 'dart:convert';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) => json.encode(data.toJson());

class DataModel {
  String username;
  String email;
  String password;
  String id;

  DataModel({
    required this.username,
    required this.email,
    required this.password,
    required this.id,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        username: json["username"],
        email: json["email"],
        password: json["password"],
        id: json["_id"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
        "password": password,
        "_id": id,
      };
}
