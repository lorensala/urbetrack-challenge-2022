// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Character _$$_CharacterFromJson(Map<String, dynamic> json) => _$_Character(
      birthYear: json['birth_year'] as String,
      eyeColor: json['eye_color'] as String,
      gender: json['gender'] as String,
      hairColor: json['hair_color'] as String,
      height: json['height'] as String,
      homeworld: json['homeworld'] as String,
      mass: json['mass'] as String,
      name: json['name'] as String,
      starships:
          (json['starships'] as List<dynamic>).map((e) => e as String).toList(),
      vehicles:
          (json['vehicles'] as List<dynamic>).map((e) => e as String).toList(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_CharacterToJson(_$_Character instance) =>
    <String, dynamic>{
      'birth_year': instance.birthYear,
      'eye_color': instance.eyeColor,
      'gender': instance.gender,
      'hair_color': instance.hairColor,
      'height': instance.height,
      'homeworld': instance.homeworld,
      'mass': instance.mass,
      'name': instance.name,
      'starships': instance.starships,
      'vehicles': instance.vehicles,
      'url': instance.url,
    };
