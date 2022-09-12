// To parse this JSON data, do
//
//     final forgotPassword = forgotPasswordFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ForgotPassword forgotPasswordFromJson(String str) => ForgotPassword.fromJson(json.decode(str));

String forgotPasswordToJson(ForgotPassword data) => json.encode(data.toJson());

class ForgotPassword {
  ForgotPassword({
    required this.mobile,
  });

  String mobile;

  factory ForgotPassword.fromJson(Map<String, dynamic> json) => ForgotPassword(
    mobile: json["mobile"],
  );

  Map<String, dynamic> toJson() => {
    "mobile": mobile,
  };
}
