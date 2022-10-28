// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'starship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StarshipResponse _$$_StarshipResponseFromJson(Map<String, dynamic> json) =>
    _$_StarshipResponse(
      name: json['name'] as String? ?? 'n/a',
      model: json['model'] as String? ?? 'n/a',
      manufacturer: json['manufacturer'] as String? ?? 'n/a',
      costInCredits: json['cost_in_credits'] as String? ?? 'n/a',
      length: json['length'] as String? ?? 'n/a',
      maxAtmospheringSpeed: json['max_atmosphering_speed'] as String? ?? 'n/a',
      crew: json['crew'] as String? ?? 'n/a',
      passengers: json['passengers'] as String? ?? 'n/a',
      cargoCapacity: json['cargo_capacity'] as String? ?? 'n/a',
      consumables: json['consumables'] as String? ?? 'n/a',
      hyperdriveRating: json['hyperdrive_rating'] as String? ?? 'n/a',
      starshipResponseClass:
          json['starship_response_class'] as String? ?? 'n/a',
      url: json['url'] as String? ?? 'n/a',
    );

Map<String, dynamic> _$$_StarshipResponseToJson(_$_StarshipResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'model': instance.model,
      'manufacturer': instance.manufacturer,
      'cost_in_credits': instance.costInCredits,
      'length': instance.length,
      'max_atmosphering_speed': instance.maxAtmospheringSpeed,
      'crew': instance.crew,
      'passengers': instance.passengers,
      'cargo_capacity': instance.cargoCapacity,
      'consumables': instance.consumables,
      'hyperdrive_rating': instance.hyperdriveRating,
      'starship_response_class': instance.starshipResponseClass,
      'url': instance.url,
    };
