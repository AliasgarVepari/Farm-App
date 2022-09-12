// To parse this JSON data, do
//
//     final verifyOtp = verifyOtpFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

VerifyOtp verifyOtpFromJson(String str) => VerifyOtp.fromJson(json.decode(str));

String verifyOtpToJson(VerifyOtp data) => json.encode(data.toJson());

class VerifyOtp {
  VerifyOtp({
    required this.otp,
  });

  String otp;

  factory VerifyOtp.fromJson(Map<String, dynamic> json) => VerifyOtp(
    otp: json["otp"],
  );

  Map<String, dynamic> toJson() => {
    "otp": otp,
  };
}
