import 'package:freezed_annotation/freezed_annotation.dart';
import '../helpers/helpers.dart';
import '../models/starship.dart';

part 'starship_dto.freezed.dart';
part 'starship_dto.g.dart';

@freezed
class StarshipDto with _$StarshipDto {
  const StarshipDto._();

  const factory StarshipDto({
    @Default('n/a') String name,
    @Default('n/a') String model,
    @Default('n/a') String cargoCapacity,
    @Default('n/a') String consumables,
    @Default('n/a') String crew,
    @Default('n/a') String length,
    @Default('n/a') String manufacturer,
    @Default('n/a') String maxAtmospheringSpeed,
    @Default('n/a') String passengers,
    @Default('n/a') String starshipClass,
    @Default('n/a') String url,
  }) = _StarshipDto;

  Starship toDomain() {
    return Starship(
      id: getIdFromUrl(url),
      name: name,
      model: model,
      cargoCapacity: int.tryParse(cargoCapacity) ?? 0,
      consumables: consumables,
      crew: int.tryParse(crew) ?? 0,
      length: double.tryParse(length) ?? 0,
      passengers: int.tryParse(passengers) ?? 0,
    );
  }

  factory StarshipDto.fromJson(Map<String, dynamic> json) =>
      _$StarshipDtoFromJson(json);
}
