// To parse this JSON data, do
//
//     final airportsDetailModel = airportsDetailModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';

part 'airports_detail_model.g.dart';

@JsonSerializable()
class AirportsDetailModel {
  AirportsDetailModel({
    this.icao,
    this.iata,
    this.shortName,
    this.fullName,
    this.municipalityName,
    this.location,
    this.country,
    this.continent,
    this.timeZone,
    this.urls,
  });

  String? icao;
  String? iata;
  String? shortName;
  String? fullName;
  String? municipalityName;
  Location? location;
  Continent? country;
  Continent? continent;
  String? timeZone;
  Urls? urls;

  factory AirportsDetailModel.fromJson(Map<String, dynamic> json) =>
      _$AirportsDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$AirportsDetailModelToJson(this);
}

@JsonSerializable()
class Continent {
  Continent({
    this.code,
    this.name,
  });

  String? code;
  String? name;

  factory Continent.fromJson(Map<String, dynamic> json) =>
      _$ContinentFromJson(json);

  Map<String, dynamic> toJson() => _$ContinentToJson(this);
}

@JsonSerializable()
class Location {
  Location({
    this.lat,
    this.lon,
  });

  double? lat;
  double? lon;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable()
class Urls {
  Urls({
    this.googleMaps,
    this.liveAtc,
    this.flightRadar,
    this.twitter,
    this.webSite,
    this.wikipedia,


  });

  String? googleMaps;
  String? liveAtc;
  String? flightRadar;
  String? webSite;
  String? wikipedia;
  String? twitter;

  factory Urls.fromJson(Map<String, dynamic> json) => _$UrlsFromJson(json);

  Map<String, dynamic> toJson() => _$UrlsToJson(this);
}
