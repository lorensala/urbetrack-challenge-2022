import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle.freezed.dart';
part 'vehicle.g.dart';

@freezed
class Vehicle with _$Vehicle {
  const factory Vehicle({
    required String name,
    required String model,
    required String manufacturer,
    required String costInCredits,
    required String length,
    required String maxAtmospheringSpeed,
    required String crew,
    required String passengers,
    required String cargoCapacity,
    required String consumables,
    required String vehicleClass,
  }) = _Vehicle;

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);
}
