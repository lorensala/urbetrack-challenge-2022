import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle.freezed.dart';
part 'vehicle.g.dart';

@freezed
class VehicleResponse with _$VehicleResponse {
  const factory VehicleResponse({
    @Default('n/a') String name,
    @Default('n/a') String model,
    @Default('n/a') String manufacturer,
    @Default('n/a') String costInCredits,
    @Default('n/a') String length,
    @Default('n/a') String maxAtmospheringSpeed,
    @Default('n/a') String crew,
    @Default('n/a') String passengers,
    @Default('n/a') String cargoCapacity,
    @Default('n/a') String consumables,
    @Default('n/a') String vehicleClass,
  }) = _VehicleResponse;

  factory VehicleResponse.fromJson(Map<String, dynamic> json) =>
      _$VehicleResponseFromJson(json);
}
