import 'package:freezed_annotation/freezed_annotation.dart';

part 'planet.freezed.dart';
part 'planet.g.dart';

@freezed
class PlanetResponse with _$PlanetResponse {
  const factory PlanetResponse({
    @Default('n/a') String name,
    @Default('n/a') String rotationPeriod,
    @Default('n/a') String orbitalPeriod,
    @Default('n/a') String diameter,
    @Default('n/a') String climate,
    @Default('n/a') String gravity,
    @Default('n/a') String terrain,
    @Default('n/a') String surfaceWater,
    @Default('n/a') String population,
  }) = _PlanetResponse;

  factory PlanetResponse.fromJson(Map<String, dynamic> json) =>
      _$PlanetResponseFromJson(json);
}
