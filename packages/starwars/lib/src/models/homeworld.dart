import 'package:freezed_annotation/freezed_annotation.dart';

part 'homeworld.freezed.dart';

@freezed
class Homeworld with _$Homeworld {
  const Homeworld._();

  const factory Homeworld({
    required int id,
    required String name,
    required DateTime rotationPeriod,
    required DateTime orbitalPeriod,
    required int diameter,
    required String climate,
    required String gravity,
    required String terrain,
    required String surfaceWater,
    required int population,
  }) = _Homeworld;

  factory Homeworld.empty() => Homeworld(
      id: -1,
      name: '',
      rotationPeriod: DateTime.now(),
      orbitalPeriod: DateTime.now(),
      diameter: -1,
      climate: '',
      gravity: '',
      terrain: '',
      surfaceWater: '',
      population: -1);
}
