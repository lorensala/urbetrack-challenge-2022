// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacterDto _$$_CharacterDtoFromJson(Map<String, dynamic> json) =>
    _$_CharacterDto(
      name: json['name'] as String? ?? 'n/a',
      height: json['height'] as String? ?? 'n/a',
      mass: json['mass'] as String? ?? 'n/a',
      hairColor: json['hairColor'] as String? ?? 'n/a',
      skinColor: json['skinColor'] as String? ?? 'n/a',
      eyeColor: json['eyeColor'] as String? ?? 'n/a',
      birthYear: json['birthYear'] as String? ?? 'n/a',
      gender: json['gender'] as String? ?? 'n/a',
      homeworld: json['homeworld'] as String? ?? 'n/a',
      starships: (json['starships'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      vehicles: (json['vehicles'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      url: json['url'] as String? ?? 'n/a',
    );

Map<String, dynamic> _$$_CharacterDtoToJson(_$_CharacterDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'height': instance.height,
      'mass': instance.mass,
      'hairColor': instance.hairColor,
      'skinColor': instance.skinColor,
      'eyeColor': instance.eyeColor,
      'birthYear': instance.birthYear,
      'gender': instance.gender,
      'homeworld': instance.homeworld,
      'starships': instance.starships,
      'vehicles': instance.vehicles,
      'url': instance.url,
    };
