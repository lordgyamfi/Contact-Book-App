// To parse this JSON data, do
//
//     final contacts = contactsFromJson(jsonString);

import 'dart:convert';

Contacts contactsFromJson(String str) => Contacts.fromJson(json.decode(str));

String contactsToJson(Contacts data) => json.encode(data.toJson());

class Contacts {
  Contacts({
    required this.name,
    required this.phone,
    required this.email,
    required this.country,
    required this.region,
  });

  String name;
  String phone;
  String email;
  String country;
  String region;

  factory Contacts.fromJson(Map<String, dynamic> json) => Contacts(
        name: json["name"],
        phone: json["phone"],
        email: json["email"],
        country: json["country"],
        region: json["region"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "phone": phone,
        "email": email,
        "country": country,
        "region": region,
      };
}
