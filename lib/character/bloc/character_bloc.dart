import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';

import '../data/character_repository.dart';
import '../domain/domain.dart';

part 'character_event.dart';
part 'character_state.dart';
part 'character_bloc.freezed.dart';

const throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final CharacterRepository _characterRepository;

  CharacterBloc(this._characterRepository) : super(const CharacterState()) {
    on<_GetCharacters>(
      _onGetCharacters,
      transformer: throttleDroppable(throttleDuration),
    );
  }

  FutureOr<void> _onGetCharacters(
      _GetCharacters event, Emitter<CharacterState> emit) async {
    if (state.hasReachedMax) return;

    // if (state.status == CharacterStatus.initial) {
    //   emit(state.copyWith(status: CharacterStatus.loading));
    //   final result = await _characterRepository.getCharacters();
    //   result.fold(
    //     (failure) => emit(state.copyWith(
    //       status: CharacterStatus.error,
    //       message: failure.message,
    //     )),
    //     (response) {
    //       final characters = response['characters'] as List<Character>;
    //       final next = response['next'] as String?;
    //       final count = response['count'] as int;
    //       emit(state.copyWith(
    //           status: CharacterStatus.loaded,
    //           characters: characters,
    //           next: next,
    //           count: count,
    //           hasReachedMax: state.characters.length == count));
    //     },
    //   );

    //   return;
    // }

    emit(state.copyWith(status: CharacterStatus.loading));

    final result = await _characterRepository.getCharacters(state.next);

    result.fold(
      (failure) => emit(state.copyWith(
        status: CharacterStatus.error,
        message: failure.message,
      )),
      (response) {
        final characters = response['characters'] as List<Character>;
        final newCharacters = List.of(state.characters)..addAll(characters);
        final next = response['next'] as String?;
        final count = response['count'] as int;

        emit(state.copyWith(
          characters: newCharacters,
          hasReachedMax: newCharacters.length == count,
          count: count,
          next: next,
          status: CharacterStatus.loaded,
        ));
      },
    );
  }
}
