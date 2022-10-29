// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleDto _$$_VehicleDtoFromJson(Map<String, dynamic> json) =>
    _$_VehicleDto(
      name: json['name'] as String? ?? 'n/a',
      model: json['model'] as String? ?? 'n/a',
      cargoCapacity: json['cargoCapacity'] as String? ?? 'n/a',
      consumables: json['consumables'] as String? ?? 'n/a',
      crew: json['crew'] as String? ?? 'n/a',
      length: json['length'] as String? ?? 'n/a',
      manufacturer: json['manufacturer'] as String? ?? 'n/a',
      maxAtmospheringSpeed: json['maxAtmospheringSpeed'] as String? ?? 'n/a',
      passengers: json['passengers'] as String? ?? 'n/a',
      vehicleClass: json['vehicleClass'] as String? ?? 'n/a',
      url: json['url'] as String? ?? 'n/a',
    );

Map<String, dynamic> _$$_VehicleDtoToJson(_$_VehicleDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'model': instance.model,
      'cargoCapacity': instance.cargoCapacity,
      'consumables': instance.consumables,
      'crew': instance.crew,
      'length': instance.length,
      'manufacturer': instance.manufacturer,
      'maxAtmospheringSpeed': instance.maxAtmospheringSpeed,
      'passengers': instance.passengers,
      'vehicleClass': instance.vehicleClass,
      'url': instance.url,
    };
