// To parse this JSON data, do
//
//     final music = musicFromJson(jsonString);

import 'dart:convert';

class PlaceInfo {
  PlaceInfo({
    required this.image,
    required this.location,
    required this.name,
    required this.distance,
    required this.days,
    required this.desc,
  });

  String image;
  String location;
  String name;
  int distance;
  int days;
  String desc;

  factory PlaceInfo.fromJson(Map<String, dynamic> json) => PlaceInfo(
        image: json["image"],
        location: json["location"],
        name: json["name"],
        distance: json["distance"],
        days: json["days"],
        desc: json["desc"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "location": location,
        "name": name,
        "distance": distance,
        "days": days,
        "desc": desc,
      };
}

List<PlaceInfo> parse(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json)['places'];
  return parsed.map((data) => PlaceInfo.fromJson(data)).toList();
}
