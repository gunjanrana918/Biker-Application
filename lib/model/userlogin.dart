// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Userdata welcomeFromJson(String str) => Userdata.fromJson(json.decode(str));

String welcomeToJson(Userdata data) => json.encode(data.toJson());

class Userdata {
  Userdata({
    required this.id,
    required this.name,
    required this.phone,
    required this.isActive,
    required this.type,
    required this.status,
    this.wareHouseId,
    required this.v,
    required this.loginId,
    required this.password,
  });

  final String id;
  final String name;
  final int phone;
  final bool isActive;
  final String type;
  final String status;
  final dynamic wareHouseId;
  final int v;
  final String loginId;
  final String password;

  factory Userdata.fromJson(Map<String, dynamic> json) => Userdata(
        id: json["_id"],
        name: json["name"],
        phone: json["phone"],
        isActive: json["isActive"],
        type: json["type"],
        status: json["status"],
        wareHouseId: json["wareHouseId"],
        v: json["__v"],
        loginId: json["loginId"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "phone": phone,
        "isActive": isActive,
        "type": type,
        "status": status,
        "wareHouseId": wareHouseId,
        "__v": v,
        "loginId": loginId,
        "password": password,
      };
}
