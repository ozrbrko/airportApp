// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airports_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirportsDetailModel _$AirportsDetailModelFromJson(Map<String, dynamic> json) =>
    AirportsDetailModel(
      icao: json['icao'] as String?,
      iata: json['iata'] as String?,
      shortName: json['shortName'] as String?,
      fullName: json['fullName'] as String?,
      municipalityName: json['municipalityName'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      country: json['country'] == null
          ? null
          : Continent.fromJson(json['country'] as Map<String, dynamic>),
      continent: json['continent'] == null
          ? null
          : Continent.fromJson(json['continent'] as Map<String, dynamic>),
      timeZone: json['timeZone'] as String?,
      urls: json['urls'] == null
          ? null
          : Urls.fromJson(json['urls'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AirportsDetailModelToJson(
        AirportsDetailModel instance) =>
    <String, dynamic>{
      'icao': instance.icao,
      'iata': instance.iata,
      'shortName': instance.shortName,
      'fullName': instance.fullName,
      'municipalityName': instance.municipalityName,
      'location': instance.location,
      'country': instance.country,
      'continent': instance.continent,
      'timeZone': instance.timeZone,
      'urls': instance.urls,
    };

Continent _$ContinentFromJson(Map<String, dynamic> json) => Continent(
      code: json['code'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ContinentToJson(Continent instance) => <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
    };

Urls _$UrlsFromJson(Map<String, dynamic> json) => Urls(
      googleMaps: json['googleMaps'] as String?,
      liveAtc: json['liveAtc'] as String?,
      flightRadar: json['flightRadar'] as String?,
      twitter: json['twitter'] as String?,
      webSite: json['webSite'] as String?,
      wikipedia: json['wikipedia'] as String?,
    );

Map<String, dynamic> _$UrlsToJson(Urls instance) => <String, dynamic>{
      'googleMaps': instance.googleMaps,
      'liveAtc': instance.liveAtc,
      'flightRadar': instance.flightRadar,
      'webSite': instance.webSite,
      'wikipedia': instance.wikipedia,
      'twitter': instance.twitter,
    };
