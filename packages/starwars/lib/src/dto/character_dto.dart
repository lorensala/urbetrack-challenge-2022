import 'package:freezed_annotation/freezed_annotation.dart';

import '../helpers/helpers.dart';
import '../models/models.dart';

part 'character_dto.freezed.dart';
part 'character_dto.g.dart';

@freezed
class CharacterDto with _$CharacterDto {
  const CharacterDto._();

  const factory CharacterDto({
    @Default('n/a') String name,
    @Default('n/a') String height,
    @Default('n/a') String mass,
    @Default('n/a') String hairColor,
    @Default('n/a') String skinColor,
    @Default('n/a') String eyeColor,
    @Default('n/a') String birthYear,
    @Default('n/a') String gender,
    @Default('n/a') String homeworld,
    @Default([]) List<String> starships,
    @Default([]) List<String> vehicles,
    @Default('n/a') String url,
  }) = _CharacterDto;

  Character toDomain() {
    return Character(
        id: getIdFromUrl(url),
        birthYear: birthYear == 'unknown' ? '--' : birthYear.toUpperCase(),
        eyeColor: eyeColor.capitalize,
        gender: gender.capitalize,
        hairColor: hairColor.capitalize,
        height: int.tryParse(height) ?? 0,
        mass: int.tryParse(mass) ?? 0,
        name: name,
        homeworld: Homeworld.empty(),
        starships: [],
        vehicles: []);
  }

  factory CharacterDto.fromJson(Map<String, dynamic> json) =>
      _$CharacterDtoFromJson(json);
}

extension StringExtension on String {
  String get capitalize {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
