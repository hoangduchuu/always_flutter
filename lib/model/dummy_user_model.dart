import 'dart:convert';


// To parse this JSON data, do
//
//     final dummyUserModel = dummyUserModelFromJson(jsonString);


DummyUserModel dummyUserModelFromJson(String str) => DummyUserModel.fromJson(json.decode(str));

String dummyUserModelToJson(DummyUserModel data) => json.encode(data.toJson());

class DummyUserModel {
  final int? id;
  final String? username;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? gender;
  final String? image;
  final String? token;

  DummyUserModel({
    this.id,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.gender,
    this.image,
    this.token,
  });

  factory DummyUserModel.fromJson(Map<String, dynamic> json) => DummyUserModel(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        gender: json["gender"],
        image: json["image"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "firstName": firstName,
        "lastName": lastName,
        "gender": gender,
        "image": image,
        "token": token,
      };

  @override
  String toString() {
    return 'DummyUserModel{id: $id, username: $username, email: $email, firstName: $firstName, lastName: $lastName, gender: $gender, image: $image, token: $token}';
  }
}
