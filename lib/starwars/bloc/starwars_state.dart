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
    @Default([]) List<CharacterResponse> characters,
    CharacterDetails? characterDetails,
    @Default('$kBaseUrl/people') String? next,
    @Default(0) int count,
    @Default(StarWarsStatus.initial) StarWarsStatus status,
    String? message,
    @Default(false) bool hasReachedMax,
  }) = _StarwarsState;
}
