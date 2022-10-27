// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'starships.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Starship _$$_StarshipFromJson(Map<String, dynamic> json) => _$_Starship(
      name: json['name'] as String,
      model: json['model'] as String,
      manufacturer: json['manufacturer'] as String,
      costInCredits: json['costInCredits'] as String,
      length: json['length'] as String,
      maxAtmospheringSpeed: json['maxAtmospheringSpeed'] as String,
      crew: json['crew'] as String,
      passengers: json['passengers'] as String,
      cargoCapacity: json['cargoCapacity'] as String,
      consumables: json['consumables'] as String,
      hyperdriveRating: json['hyperdriveRating'] as String,
      starshipClass: json['starshipClass'] as String,
    );

Map<String, dynamic> _$$_StarshipToJson(_$_Starship instance) =>
    <String, dynamic>{
      'name': instance.name,
      'model': instance.model,
      'manufacturer': instance.manufacturer,
      'costInCredits': instance.costInCredits,
      'length': instance.length,
      'maxAtmospheringSpeed': instance.maxAtmospheringSpeed,
      'crew': instance.crew,
      'passengers': instance.passengers,
      'cargoCapacity': instance.cargoCapacity,
      'consumables': instance.consumables,
      'hyperdriveRating': instance.hyperdriveRating,
      'starshipClass': instance.starshipClass,
    };
