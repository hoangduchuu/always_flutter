import 'dart:convert';

class GeoModel {
  final String lat;
  final String lng;

  GeoModel({
    required this.lat,
    required this.lng,
  });

  GeoModel copyWith({
    String? lat,
    String? lng,
  }) =>
      GeoModel(
        lat: lat ?? this.lat,
        lng: lng ?? this.lng,
      );

  factory GeoModel.fromJson(String str) => GeoModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GeoModel.fromMap(Map<String, dynamic> json) => GeoModel(
        lat: json["lat"],
        lng: json["lng"],
      );

  Map<String, dynamic> toMap() => {
        "lat": lat,
        "lng": lng,
      };
}
