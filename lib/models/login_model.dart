// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    required this.email,
    required this.password,
    required this.role,
    required this.deviceToken,
    required this.type,
    required this.socialId,
  });

  String email;
  String password;
  String role;
  String deviceToken;
  String type;
  String socialId;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    email: json["email"],
    password: json["password"],
    role: json["role"],
    deviceToken: json["device_token"],
    type: json["type"],
    socialId: json["social_id"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "password": password,
    "role": role,
    "device_token": deviceToken,
    "type": type,
    "social_id": socialId,
  };
}
