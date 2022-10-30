part of 'starwars_bloc.dart';

@freezed
class StarWarsState with _$StarWarsState {
  const factory StarWarsState({
    @Default([]) List<Character> characters,
    Character? cachedCharacter,
    @Default(1) int nextPage,
    @Default(Status.initial()) Status status,
    @Default(false) bool hasReachedMax,
  }) = _StarwarsState;
}
