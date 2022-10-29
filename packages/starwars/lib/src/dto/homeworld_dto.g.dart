// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homeworld_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeworldDto _$$_HomeworldDtoFromJson(Map<String, dynamic> json) =>
    _$_HomeworldDto(
      name: json['name'] as String? ?? 'n/a',
      rotationPeriod: json['rotation_period'] as String? ?? 'n/a',
      orbitalPeriod: json['orbital_period'] as String? ?? 'n/a',
      diameter: json['diameter'] as String? ?? 'n/a',
      climate: json['climate'] as String? ?? 'n/a',
      gravity: json['gravity'] as String? ?? 'n/a',
      terrain: json['terrain'] as String? ?? 'n/a',
      surfaceWater: json['surface_water'] as String? ?? 'n/a',
      population: json['population'] as String? ?? 'n/a',
      created: json['created'] as String? ?? 'n/a',
      edited: json['edited'] as String? ?? 'n/a',
      url: json['url'] as String? ?? 'n/a',
    );

Map<String, dynamic> _$$_HomeworldDtoToJson(_$_HomeworldDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rotation_period': instance.rotationPeriod,
      'orbital_period': instance.orbitalPeriod,
      'diameter': instance.diameter,
      'climate': instance.climate,
      'gravity': instance.gravity,
      'terrain': instance.terrain,
      'surface_water': instance.surfaceWater,
      'population': instance.population,
      'created': instance.created,
      'edited': instance.edited,
      'url': instance.url,
    };
