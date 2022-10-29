import 'package:freezed_annotation/freezed_annotation.dart';

import '../helpers/helpers.dart';
import '../models/homeworld.dart';

part 'homeworld_dto.freezed.dart';
part 'homeworld_dto.g.dart';

@freezed
class HomeworldDto with _$HomeworldDto {
  const HomeworldDto._();

  const factory HomeworldDto({
    @Default('n/a') String name,
    @Default('n/a') String rotationPeriod,
    @Default('n/a') String orbitalPeriod,
    @Default('n/a') String diameter,
    @Default('n/a') String climate,
    @Default('n/a') String gravity,
    @Default('n/a') String terrain,
    @Default('n/a') String surfaceWater,
    @Default('n/a') String population,
    @Default('n/a') String created,
    @Default('n/a') String edited,
    @Default('n/a') String url,
  }) = _HomeworldDto;

  Homeworld toDomain() {
    return Homeworld(
      id: getIdFromUrl(url),
      name: name,
      rotationPeriod: DateTime(int.tryParse(rotationPeriod) ?? 0),
      orbitalPeriod: DateTime(int.tryParse(orbitalPeriod) ?? 0),
      diameter: int.tryParse(diameter) ?? 0,
      climate: climate,
      gravity: gravity,
      terrain: terrain,
      surfaceWater: surfaceWater,
      population: int.parse(population),
    );
  }

  factory HomeworldDto.fromJson(Map<String, dynamic> json) =>
      _$HomeworldDtoFromJson(json);
}
