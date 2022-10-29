part of 'starwars_bloc.dart';

@freezed
class StarWarsEvent with _$StarWarsEvent {
  const factory StarWarsEvent.getPeople({@Default(-1) int page}) = _GetPeople;
  const factory StarWarsEvent.getCharacter({required int id}) = _GetCharacter;
  const factory StarWarsEvent.reportSighting(
      {required int userId,
      required DateTime dateTime,
      required String characterName}) = _ReportSighting;
}
