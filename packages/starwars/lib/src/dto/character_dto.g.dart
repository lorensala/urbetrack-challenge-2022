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
      hairColor: json['hair_color'] as String? ?? 'n/a',
      skinColor: json['skin_color'] as String? ?? 'n/a',
      eyeColor: json['eye_color'] as String? ?? 'n/a',
      birthYear: json['birth_year'] as String? ?? 'n/a',
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
      'hair_color': instance.hairColor,
      'skin_color': instance.skinColor,
      'eye_color': instance.eyeColor,
      'birth_year': instance.birthYear,
      'gender': instance.gender,
      'homeworld': instance.homeworld,
      'starships': instance.starships,
      'vehicles': instance.vehicles,
      'url': instance.url,
    };
