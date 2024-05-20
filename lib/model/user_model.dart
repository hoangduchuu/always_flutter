import 'dart:convert';
import 'dart:math';

import 'package:developerfect_app/model/address_model.dart';
import 'package:developerfect_app/model/company_model.dart';

class UserModel {
  final int id;
  final String name;
  final String username;
  final String email;
  final AddressModel address;
  final String phone;
  final String website;
  final String avatar;
  final CompanyModel company;

  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.avatar,
    required this.company,
  });

  UserModel copyWith({
    int? id,
    String? name,
    String? username,
    String? email,
    AddressModel? address,
    String? phone,
    String? website,
    String? avatar,
    CompanyModel? company,
  }) =>
      UserModel(
        id: id ?? this.id,
        name: name ?? this.name,
        username: username ?? this.username,
        email: email ?? this.email,
        address: address ?? this.address,
        phone: phone ?? this.phone,
        website: website ?? this.website,
        avatar: avatar ?? this.avatar,
        company: company ?? this.company,
      );

  factory UserModel.fromJson(String str) => UserModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        address: AddressModel.fromMap(json["address"]),
        phone: json["phone"],
        website: json["website"],
        avatar: 'https://picsum.photos/id/${Random().nextInt(10)}/200/200/', // FIXME: update value
        company: CompanyModel.fromMap(json["company"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "username": username,
        "email": email,
        "address": address.toMap(),
        "phone": phone,
        "website": website,
        "avatar": avatar,
        "company": company.toMap(),
      };
}
