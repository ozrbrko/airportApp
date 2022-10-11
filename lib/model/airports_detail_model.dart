// To parse this JSON data, do
//
//     final airportsDetailModel = airportsDetailModelFromJson(jsonString);

import 'dart:convert';

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
    this.timeZone,
    this.urls,
  });

  String? icao;
  String? iata;
  String? shortName;
  String? fullName;
  String? municipalityName;
  String? timeZone;
  Urls? urls;



  factory AirportsDetailModel.fromJson(Map<String, dynamic> json) => _$AirportsDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$AirportsDetailModelToJson(this);
}

@JsonSerializable()
class Urls {
  Urls({
    this.webSite,
    this.wikipedia,
    this.twitter,
    this.googleMaps,
    this.liveAtc,
    this.flightRadar,
  });

  String? webSite;
  String? wikipedia;
  String? twitter;
  String? googleMaps;
  String? liveAtc;
  String? flightRadar;



  factory Urls.fromJson(Map<String, dynamic> json) => _$UrlsFromJson(json);

  Map<String, dynamic> toJson() => _$UrlsToJson(this);
}
