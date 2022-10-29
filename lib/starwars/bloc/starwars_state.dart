part of 'starwars_bloc.dart';

@freezed
class StarWarsStatus with _$StarWarsStatus {
  const StarWarsStatus._();

  const factory StarWarsStatus.initial() = _Initial;
  const factory StarWarsStatus.loading() = _Loading;
  const factory StarWarsStatus.loaded() = _Loaded;
  const factory StarWarsStatus.error(String message) = _Error;
  const factory StarWarsStatus.reportSuccess() = _Reported;
  const factory StarWarsStatus.reportFailed(String message) = _ReportFailed;
  const factory StarWarsStatus.reportInProgress() = _ReportInProgress;

  bool get isLoading => this is _Loading || this is _ReportInProgress;
}

@freezed
class StarWarsState with _$StarWarsState {
  const factory StarWarsState({
    @Default([]) List<Character> characters,
    Character? selectedCharacter,
    @Default(-1) int nextPage,
    @Default(0) int count,
    @Default(StarWarsStatus.initial()) StarWarsStatus status,
    @Default(false) bool hasReachedMax,
  }) = _StarwarsState;
}
