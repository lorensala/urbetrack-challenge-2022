// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleResponse _$$_VehicleResponseFromJson(Map<String, dynamic> json) =>
    _$_VehicleResponse(
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
      vehicleClass: json['vehicle_class'] as String? ?? 'n/a',
    );

Map<String, dynamic> _$$_VehicleResponseToJson(_$_VehicleResponse instance) =>
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
      'vehicle_class': instance.vehicleClass,
    };
