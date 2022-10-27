// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homeworld.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Homeworld _$$_HomeworldFromJson(Map<String, dynamic> json) => _$_Homeworld(
      name: json['name'] as String,
      rotationPeriod: json['rotationPeriod'] as String,
      orbitalPeriod: json['orbitalPeriod'] as String,
      diameter: json['diameter'] as String,
      climate: json['climate'] as String,
      gravity: json['gravity'] as String,
      terrain: json['terrain'] as String,
      surfaceWater: json['surfaceWater'] as String,
      population: json['population'] as String,
    );

Map<String, dynamic> _$$_HomeworldToJson(_$_Homeworld instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rotationPeriod': instance.rotationPeriod,
      'orbitalPeriod': instance.orbitalPeriod,
      'diameter': instance.diameter,
      'climate': instance.climate,
      'gravity': instance.gravity,
      'terrain': instance.terrain,
      'surfaceWater': instance.surfaceWater,
      'population': instance.population,
    };
