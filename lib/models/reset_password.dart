// To parse this JSON data, do
//
//     final resetPassword = resetPasswordFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ResetPassword resetPasswordFromJson(String str) => ResetPassword.fromJson(json.decode(str));

String resetPasswordToJson(ResetPassword data) => json.encode(data.toJson());

class ResetPassword {
  ResetPassword({
    required this.token,
    required this.password,
    required this.cpassword,
  });

  String token;
  String password;
  String cpassword;

  factory ResetPassword.fromJson(Map<String, dynamic> json) => ResetPassword(
    token: json["token"],
    password: json["password"],
    cpassword: json["cpassword"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "password": password,
    "cpassword": cpassword,
  };
}
