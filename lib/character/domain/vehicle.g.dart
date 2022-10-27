// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Vehicle _$$_VehicleFromJson(Map<String, dynamic> json) => _$_Vehicle(
      name: json['name'] as String,
      model: json['model'] as String,
      manufacturer: json['manufacturer'] as String,
      costInCredits: json['costInCredits'] as String,
      length: json['length'] as String,
      maxAtmospheringSpeed: json['maxAtmospheringSpeed'] as String,
      crew: json['crew'] as String,
      passengers: json['passengers'] as String,
      cargoCapacity: json['cargoCapacity'] as String,
      consumables: json['consumables'] as String,
      vehicleClass: json['vehicleClass'] as String,
    );

Map<String, dynamic> _$$_VehicleToJson(_$_Vehicle instance) =>
    <String, dynamic>{
      'name': instance.name,
      'model': instance.model,
      'manufacturer': instance.manufacturer,
      'costInCredits': instance.costInCredits,
      'length': instance.length,
      'maxAtmospheringSpeed': instance.maxAtmospheringSpeed,
      'crew': instance.crew,
      'passengers': instance.passengers,
      'cargoCapacity': instance.cargoCapacity,
      'consumables': instance.consumables,
      'vehicleClass': instance.vehicleClass,
    };
