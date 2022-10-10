// To parse this JSON data, do
//
//     final airportsModel = airportsModelFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'airports_model.g.dart';

@JsonSerializable()
class AirportsModel {
  AirportsModel({
    this.items,
  });

  List<AirportsResult>? items;



  factory AirportsModel.fromJson(Map<String, dynamic> json) => _$AirportsModelFromJson(json);

  Map<String, dynamic> toJson() => _$AirportsModelToJson(this);
}


@JsonSerializable()
class AirportsResult {
  AirportsResult({
    this.icao,
    this.iata,
    this.name,
    this.shortName,
    this.municipalityName,
    this.location,
    this.countryCode,
  });

  String? icao;
  String? iata;
  String? name;
  String? shortName;
  String? municipalityName;
  Location? location;
  String? countryCode;



  factory AirportsResult.fromJson(Map<String, dynamic> json) => _$AirportsResultFromJson(json);

  Map<String, dynamic> toJson() => _$AirportsResultToJson(this);
}

@JsonSerializable()
class Location {
  Location({
    this.lat,
    this.lon,
  });

  double? lat;
  double? lon;

  factory Location.fromRawJson(String str) => Location.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    lat: json["lat"].toDouble(),
    lon: json["lon"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "lat": lat,
    "lon": lon,
  };
}
