// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airports_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirportsModel _$AirportsModelFromJson(Map<String, dynamic> json) =>
    AirportsModel(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => AirportsResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AirportsModelToJson(AirportsModel instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

AirportsResult _$AirportsResultFromJson(Map<String, dynamic> json) =>
    AirportsResult(
      icao: json['icao'] as String?,
      iata: json['iata'] as String?,
      name: json['name'] as String?,
      shortName: json['shortName'] as String?,
      municipalityName: json['municipalityName'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      countryCode: json['countryCode'] as String?,
    );

Map<String, dynamic> _$AirportsResultToJson(AirportsResult instance) =>
    <String, dynamic>{
      'icao': instance.icao,
      'iata': instance.iata,
      'name': instance.name,
      'shortName': instance.shortName,
      'municipalityName': instance.municipalityName,
      'location': instance.location,
      'countryCode': instance.countryCode,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
    };
