import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle.freezed.dart';

@freezed
class Vehicle with _$Vehicle {
  const factory Vehicle({
    required int id,
    required String name,
    required String model,
    required String cargoCapacity,
    required String consumables,
    required String crew,
    required double length,
    required String manufacturer,
    required int maxAtmospheringSpeed,
    required int passengers,
    required String vehicleClass,
  }) = _Vehicle;
}
