import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class CharacterResponse with _$CharacterResponse {
  const factory CharacterResponse(
      {@Default('n/a') String name,
      @Default('n/a') String height,
      @Default('n/a') String mass,
      @Default('n/a') String hairColor,
      @Default('n/a') String skinColor,
      @Default('n/a') String eyeColor,
      @Default('n/a') String birthYear,
      @Default('n/a') String gender,
      @Default('n/a') String homeworld,
      @Default([]) List<String> vehicles,
      @Default([]) List<String> starships,
      @Default('n/a') String url}) = _CharacterResponse;

  factory CharacterResponse.fromJson(Map<String, dynamic> json) =>
      _$CharacterResponseFromJson(json);
}
