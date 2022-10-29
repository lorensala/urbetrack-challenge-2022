// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'starship_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StarshipDto _$$_StarshipDtoFromJson(Map<String, dynamic> json) =>
    _$_StarshipDto(
      name: json['name'] as String? ?? 'n/a',
      model: json['model'] as String? ?? 'n/a',
      cargoCapacity: json['cargoCapacity'] as String? ?? 'n/a',
      consumables: json['consumables'] as String? ?? 'n/a',
      crew: json['crew'] as String? ?? 'n/a',
      length: json['length'] as String? ?? 'n/a',
      manufacturer: json['manufacturer'] as String? ?? 'n/a',
      maxAtmospheringSpeed: json['maxAtmospheringSpeed'] as String? ?? 'n/a',
      passengers: json['passengers'] as String? ?? 'n/a',
      starshipClass: json['starshipClass'] as String? ?? 'n/a',
      url: json['url'] as String? ?? 'n/a',
    );

Map<String, dynamic> _$$_StarshipDtoToJson(_$_StarshipDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'model': instance.model,
      'cargoCapacity': instance.cargoCapacity,
      'consumables': instance.consumables,
      'crew': instance.crew,
      'length': instance.length,
      'manufacturer': instance.manufacturer,
      'maxAtmospheringSpeed': instance.maxAtmospheringSpeed,
      'passengers': instance.passengers,
      'starshipClass': instance.starshipClass,
      'url': instance.url,
    };
