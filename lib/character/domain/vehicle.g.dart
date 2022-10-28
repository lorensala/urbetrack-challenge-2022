// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Vehicle _$$_VehicleFromJson(Map<String, dynamic> json) => _$_Vehicle(
      name: json['name'] as String,
      model: json['model'] as String,
      manufacturer: json['manufacturer'] as String,
      costInCredits: json['cost_in_credits'] as String,
      length: json['length'] as String,
      maxAtmospheringSpeed: json['max_atmosphering_speed'] as String,
      crew: json['crew'] as String,
      passengers: json['passengers'] as String,
      cargoCapacity: json['cargo_capacity'] as String,
      consumables: json['consumables'] as String,
      vehicleClass: json['vehicle_class'] as String,
    );

Map<String, dynamic> _$$_VehicleToJson(_$_Vehicle instance) =>
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
