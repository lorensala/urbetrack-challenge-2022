import 'package:freezed_annotation/freezed_annotation.dart';

part 'starship.freezed.dart';
part 'starship.g.dart';

@freezed
class StarshipResponse with _$StarshipResponse {
  const factory StarshipResponse({
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
    @Default('n/a') String hyperdriveRating,
    @Default('n/a') String starshipResponseClass,
    @Default('n/a') String url,
  }) = _StarshipResponse;

  factory StarshipResponse.fromJson(Map<String, dynamic> json) =>
      _$StarshipResponseFromJson(json);
}
