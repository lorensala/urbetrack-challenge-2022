import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_event.dart';
part 'character_state.dart';
part 'character_bloc.freezed.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  CharacterBloc() : super(_Initial()) {
    on<CharacterEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
