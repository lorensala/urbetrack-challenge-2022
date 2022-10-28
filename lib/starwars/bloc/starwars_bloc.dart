import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/repository/starwars_repository.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import '../models/character_details.dart';

import '../../helpers/helpers.dart';
import '../data/models/models.dart';

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
    if (state.characterDetails?.id ==
        getIdFromUrl(event.characterResponse.url)) {
      return;
    }
    emit(state.copyWith(status: StarWarsStatus.loading));

    final result =
        await _repository.getCharacterDetails(event.characterResponse);

    result.fold(
      (failure) => emit(state.copyWith(status: StarWarsStatus.error)),
      (characterDetails) => emit(
        state.copyWith(
          status: StarWarsStatus.loaded,
          characterDetails: characterDetails,
        ),
      ),
    );
  }

  FutureOr<void> _onGetPeople(
      _GetPeople event, Emitter<StarWarsState> emit) async {
    if (state.hasReachedMax) return;

    emit(state.copyWith(status: StarWarsStatus.loading));

    final res = await _repository.getPeople(state.next!);

    res.fold(
      (failure) => emit(state.copyWith(
        status: StarWarsStatus.error,
        message: failure.message,
      )),
      (people) => emit(
        state.copyWith(
          status: StarWarsStatus.loaded,
          characters: [...state.characters, ...people.results ?? []],
          next: people.next,
          count: people.count!,
          hasReachedMax: people.next == null,
        ),
      ),
    );
  }

  FutureOr<void> _onReportSighting(
      _ReportSighting event, Emitter<StarWarsState> emit) async {
    emit(state.copyWith(status: StarWarsStatus.reportInProgress));
    final res = await _repository.reportSighting(
      event.userId,
      event.dateTime,
      event.characterName,
    );

    res.fold(
      (failure) => emit(state.copyWith(
        status: StarWarsStatus.reportFailed,
        message: failure.message,
      )),
      (success) => emit(state.copyWith(
        status: StarWarsStatus.reported,
      )),
    );
  }
}
