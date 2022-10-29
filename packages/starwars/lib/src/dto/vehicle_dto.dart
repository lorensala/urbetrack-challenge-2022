import 'package:freezed_annotation/freezed_annotation.dart';

import '../helpers/helpers.dart';
import '../models/vehicle.dart';

part 'vehicle_dto.freezed.dart';
part 'vehicle_dto.g.dart';

@freezed
class VehicleDto with _$VehicleDto {
  const VehicleDto._();

  const factory VehicleDto({
    @Default('n/a') String name,
    @Default('n/a') String model,
    @Default('n/a') String cargoCapacity,
    @Default('n/a') String consumables,
    @Default('n/a') String crew,
    @Default('n/a') String length,
    @Default('n/a') String manufacturer,
    @Default('n/a') String maxAtmospheringSpeed,
    @Default('n/a') String passengers,
    @Default('n/a') String vehicleClass,
    @Default('n/a') String url,
  }) = _VehicleDto;

  Vehicle toDomain() {
    return Vehicle(
      id: getIdFromUrl(url),
      name: name,
      model: model,
      cargoCapacity: cargoCapacity,
      consumables: consumables,
      crew: crew,
      length: double.tryParse(length) ?? 0,
      manufacturer: manufacturer,
      maxAtmospheringSpeed: int.tryParse(maxAtmospheringSpeed) ?? 0,
      passengers: int.tryParse(passengers) ?? 0,
      vehicleClass: vehicleClass,
    );
  }

  factory VehicleDto.fromJson(Map<String, dynamic> json) =>
      _$VehicleDtoFromJson(json);
}
