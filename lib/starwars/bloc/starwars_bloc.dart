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

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class StarWarsBloc extends Bloc<StarWarsEvent, StarWarsState> {
  final StarWarsRepository _repository;

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
    if (state.selectedCharacter?.id == event.id) {
      return;
    }

    emit(state.copyWith(status: const StarWarsStatus.loading()));

    final result = await _repository.getCharacter(event.id);

    result.fold(
      (failure) =>
          emit(state.copyWith(status: StarWarsStatus.error(failure.message))),
      (character) => emit(
        state.copyWith(
          status: const StarWarsStatus.loaded(),
          selectedCharacter: character,
        ),
      ),
    );
  }

  FutureOr<void> _onGetPeople(
      _GetPeople event, Emitter<StarWarsState> emit) async {
    if (state.hasReachedMax) return;

    emit(state.copyWith(status: const StarWarsStatus.loading()));

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
