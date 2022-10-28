part of 'character_bloc.dart';

@freezed
class CharacterEvent with _$CharacterEvent {
  const factory CharacterEvent.getCharacters() = _GetCharacters;
  const factory CharacterEvent.getCharacter(int id) = _GetCharacter;
}
