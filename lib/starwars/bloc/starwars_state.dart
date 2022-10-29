part of 'starwars_bloc.dart';

enum StarWarsStatus {
  initial,
  loading,
  error,
  loaded,
  reported,
  reportInProgress,
  reportFailed
}

@freezed
class StarWarsState with _$StarWarsState {
  const factory StarWarsState({
    @Default([]) List<Character> characters,
    Character? selectedCharacter,
    @Default(0) int nextPage,
    @Default(0) int count,
    @Default(StarWarsStatus.initial) StarWarsStatus status,
    String? message,
    @Default(false) bool hasReachedMax,
  }) = _StarwarsState;
}
