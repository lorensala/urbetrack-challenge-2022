import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  const factory Character({
    required String birthYear,
    required String eyeColor,
    required String gender,
    required String hairColor,
    required String height,
    required String homeworld,
    required String mass,
    required String name,
    required List<String> starships,
    required List<String> vehicles,
    required String url,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}
