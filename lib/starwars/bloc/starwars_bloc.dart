import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starwars/starwars.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

part 'starwars_event.dart';
part 'starwars_state.dart';
part 'starwars_bloc.freezed.dart';

const throttleDuration = Duration(milliseconds: 100);

/// Process only one event and ignores all other events.
/// This is useful for preventing the user from fetching the api
/// multiple times when scrolling down.
EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

/// {@template starwars_bloc}
/// A [Bloc] which handles the business logic for the [Starwars] app.
/// {@endtemplate}
class StarWarsBloc extends Bloc<StarWarsEvent, StarWarsState> {
  /// {@macro starwars_repository}
  final StarWarsRepository _repository;

  /// {@macro starwars_bloc}
  StarWarsBloc(this._repository) : super(const StarWarsState()) {
    on<_GetPeople>(_onGetPeople,
        transformer: throttleDroppable(throttleDuration));
    on<_GetCharacter>(_onGetCharacter);
    on<_ReportSighting>(_onReportSighting);
  }

  Future<void> _onGetCharacter(
    _GetCharacter event,
    Emitter<StarWarsState> emit,
  ) async {
    // If the character is already in the cache, return early.
    if (state.selectedCharacter?.id == event.id) {
      return;
    }

    // Fetch the character from the api.
    emit(state.copyWith(status: const StarWarsStatus.loadingCharacter()));

    final result = await _repository.getCharacter(event.id);

    result.fold(
      (failure) => emit(state.copyWith(
          status: StarWarsStatus.characterError(failure.message))),
      (character) => emit(
        state.copyWith(
          status: const StarWarsStatus.characterLoaded(),
          selectedCharacter: character,
        ),
      ),
    );
  }

  FutureOr<void> _onGetPeople(
      _GetPeople event, Emitter<StarWarsState> emit) async {
    // if we have reached the end of the list, we don't need to fetch more
    if (state.hasReachedMax) return;

    // if the status is initial, then we are fetching the first page
    // and we dont want to emit the laoding state.
    if (state.status != const StarWarsStatus.initial()) {
      emit(state.copyWith(status: const StarWarsStatus.loading()));
    }
    final res = await _repository.getPeople(state.nextPage);

    res.fold(
      (failure) => emit(state.copyWith(
        status: StarWarsStatus.error(failure.message),
      )),
      (people) => emit(
        state.copyWith(
          status: const StarWarsStatus.loaded(),
          characters: [...state.characters, ...people.results],
          nextPage: people.nextPage,
          count: people.count,
          hasReachedMax: people.nextPage == -1,
        ),
      ),
    );
  }

  FutureOr<void> _onReportSighting(
      _ReportSighting event, Emitter<StarWarsState> emit) async {
    emit(state.copyWith(status: const StarWarsStatus.reportInProgress()));

    final res = await _repository.reportSighting(
      event.userId,
      event.dateTime,
      event.characterName,
    );

    res.fold(
      (failure) => emit(state.copyWith(
        status: StarWarsStatus.reportFailed(failure.message),
      )),
      (success) => emit(state.copyWith(
        status: const StarWarsStatus.reportSuccess(),
      )),
    );
  }
}
