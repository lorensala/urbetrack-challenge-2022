// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Character _$$_CharacterFromJson(Map<String, dynamic> json) => _$_Character(
      birthYear: json['birthYear'] as String,
      eyeColor: json['eyeColor'] as String,
      gender: json['gender'] as String,
      hairColor:
          (json['hairColor'] as List<dynamic>).map((e) => e as String).toList(),
      height: json['height'] as String,
      homeworld: json['homeworld'] as String,
      mass: json['mass'] as String,
      name: json['name'] as String,
      starships: json['starships'] as String,
      vehicles:
          (json['vehicles'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_CharacterToJson(_$_Character instance) =>
    <String, dynamic>{
      'birthYear': instance.birthYear,
      'eyeColor': instance.eyeColor,
      'gender': instance.gender,
      'hairColor': instance.hairColor,
      'height': instance.height,
      'homeworld': instance.homeworld,
      'mass': instance.mass,
      'name': instance.name,
      'starships': instance.starships,
      'vehicles': instance.vehicles,
    };
