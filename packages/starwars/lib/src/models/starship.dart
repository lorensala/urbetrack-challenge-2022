import 'package:freezed_annotation/freezed_annotation.dart';

part 'starship.freezed.dart';

@freezed
class Starship with _$Starship {
  const factory Starship({
    required int id,
    required String name,
    required int cargoCapacity,
    required String consumables,
    required int crew,
    required double length,
    required String model,
    required int passengers,
  }) = _Starship;
}
