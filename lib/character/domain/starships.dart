import 'package:freezed_annotation/freezed_annotation.dart';

part 'starships.freezed.dart';
part 'starships.g.dart';

@freezed
class Starship with _$Starship {
  const factory Starship({
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
    required String hyperdriveRating,
    required String starshipClass,
  }) = _Starship;

  factory Starship.fromJson(Map<String, dynamic> json) =>
      _$StarshipFromJson(json);
}
