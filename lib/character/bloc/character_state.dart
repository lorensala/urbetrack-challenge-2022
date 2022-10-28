part of 'character_bloc.dart';

enum CharacterStatus { initial, loading, error, loaded }

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState({
    @Default([]) List<Character> characters,
    String? next,
    @Default(0) int count,
    @Default(CharacterStatus.initial) CharacterStatus status,
    String? message,
    @Default(false) bool hasReachedMax,
  }) = _CharacterState;
}
