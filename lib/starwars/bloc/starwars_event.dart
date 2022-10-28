part of 'starwars_bloc.dart';

@freezed
class StarWarsEvent with _$StarWarsEvent {
  const factory StarWarsEvent.getPeople() = _GetPeople;
  const factory StarWarsEvent.getCharacter(
      {required CharacterResponse characterResponse}) = _GetCharacter;
  const factory StarWarsEvent.reportSighting(
      {required int userId,
      required DateTime dateTime,
      required String characterName}) = _ReportSighting;
}
