// To parse this JSON data, do
//
//     final signinModel = signinModelFromJson(jsonString);

import 'dart:convert';

SigninModel signinModelFromJson(String str) => SigninModel.fromJson(json.decode(str));

String signinModelToJson(SigninModel data) => json.encode(data.toJson());

class SigninModel {
  SigninModel({
    required this.fullName,
    required this.email,
    required this.phone,
    required this.password,
    required this.role,
    required this.businessName,
    required this.informalName,
    required this.address,
    required this.city,
    required this.state,
    required this.zipCode,
    required this.registrationProof,
    required this.businessHours,
    required this.deviceToken,
    required this.type,
    required this.socialId,
  });

  String fullName;
  String email;
  String phone;
  String password;
  String role;
  String businessName;
  String informalName;
  String address;
  String city;
  String state;
  int zipCode;
  String registrationProof;
  BusinessHours businessHours;
  String deviceToken;
  String type;
  String socialId;

  factory SigninModel.fromJson(Map<String, dynamic> json) => SigninModel(
    fullName: json["full_name"],
    email: json["email"],
    phone: json["phone"],
    password: json["password"],
    role: json["role"],
    businessName: json["business_name"],
    informalName: json["informal_name"],
    address: json["address"],
    city: json["city"],
    state: json["state"],
    zipCode: json["zip_code"],
    registrationProof: json["registration_proof"],
    businessHours: BusinessHours.fromJson(json["business_hours"]),
    deviceToken: json["device_token"],
    type: json["type"],
    socialId: json["social_id"],
  );

  Map<String, dynamic> toJson() => {
    "full_name": fullName,
    "email": email,
    "phone": phone,
    "password": password,
    "role": role,
    "business_name": businessName,
    "informal_name": informalName,
    "address": address,
    "city": city,
    "state": state,
    "zip_code": zipCode,
    "registration_proof": registrationProof,
    "business_hours": businessHours.toJson(),
    "device_token": deviceToken,
    "type": type,
    "social_id": socialId,
  };
}

class BusinessHours {
  BusinessHours({
    required this.mon,
    required this.tue,
    required this.wed,
    required this.thu,
    required this.fri,
    required this.sat,
    required this.sun,
  });

  List<String> mon;
  List<String> tue;
  List<String> wed;
  List<String> thu;
  List<String> fri;
  List<String> sat;
  List<String> sun;

  factory BusinessHours.fromJson(Map<String, dynamic> json) => BusinessHours(
    mon: List<String>.from(json["mon"].map((x) => x)),
    tue: List<String>.from(json["tue"].map((x) => x)),
    wed: List<String>.from(json["wed"].map((x) => x)),
    thu: List<String>.from(json["thu"].map((x) => x)),
    fri: List<String>.from(json["fri"].map((x) => x)),
    sat: List<String>.from(json["sat"].map((x) => x)),
    sun: List<String>.from(json["sun"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "mon": List<dynamic>.from(mon.map((x) => x)),
    "tue": List<dynamic>.from(tue.map((x) => x)),
    "wed": List<dynamic>.from(wed.map((x) => x)),
    "thu": List<dynamic>.from(thu.map((x) => x)),
    "fri": List<dynamic>.from(fri.map((x) => x)),
    "sat": List<dynamic>.from(sat.map((x) => x)),
    "sun": List<dynamic>.from(sun.map((x) => x)),
  };
}
