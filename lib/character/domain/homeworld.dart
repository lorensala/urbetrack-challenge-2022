import 'package:freezed_annotation/freezed_annotation.dart';

part 'homeworld.freezed.dart';
part 'homeworld.g.dart';

@freezed
class Homeworld with _$Homeworld {
  const factory Homeworld({
    required String name,
    required String rotationPeriod,
    required String orbitalPeriod,
    required String diameter,
    required String climate,
    required String gravity,
    required String terrain,
    required String surfaceWater,
    required String population,
  }) = _Homeworld;

  factory Homeworld.fromJson(Map<String, dynamic> json) =>
      _$HomeworldFromJson(json);
}
