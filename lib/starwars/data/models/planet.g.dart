// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlanetResponse _$$_PlanetResponseFromJson(Map<String, dynamic> json) =>
    _$_PlanetResponse(
      name: json['name'] as String? ?? 'n/a',
      rotationPeriod: json['rotation_period'] as String? ?? 'n/a',
      orbitalPeriod: json['orbital_period'] as String? ?? 'n/a',
      diameter: json['diameter'] as String? ?? 'n/a',
      climate: json['climate'] as String? ?? 'n/a',
      gravity: json['gravity'] as String? ?? 'n/a',
      terrain: json['terrain'] as String? ?? 'n/a',
      surfaceWater: json['surface_water'] as String? ?? 'n/a',
      population: json['population'] as String? ?? 'n/a',
    );

Map<String, dynamic> _$$_PlanetResponseToJson(_$_PlanetResponse instance) =>
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
    };
