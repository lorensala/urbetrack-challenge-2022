import 'package:dartz/dartz.dart';

import '../api/api.dart';
import '../dto/dto.dart';
import '../models/models.dart';

/// {@template starwars_repository}
/// A class which manages the connection between the [StarwarsApi] and the
/// presentation layer.
/// {@endtemplate}
class StarWarsRepository {
  /// {@macro starwars_api}
  final StarWarsApi _apiProvider;

  /// {@macro starwars_repository}
  StarWarsRepository(this._apiProvider);

  /// {@macro starwars_repository}
  ///
  /// Gets a [People] object from the [StarwarsApi]
  ///
  /// Throws an [ApiFailure] if the call fails.
  Future<Either<ApiFailure, People>> getPeople(int page) async {
    try {
      final res = await _apiProvider.getPeople(page);
      return right(PeopleDto.fromJson(res.data).toDomain());
    } on ApiFailure catch (e) {
      return left(e);
    } catch (e) {
      return left(ApiFailure());
    }
  }

  /// {@macro starwars_repository}
  ///
  /// Gets a [Character] object from the [StarwarsApi]
  ///
  /// Throws an [ApiFailure] if the call fails.
  Future<Either<ApiFailure, Character>> getCharacter(
    int id,
  ) async {
    try {
      final res = await _apiProvider.getCharacter(id);
      final character = CharacterDto.fromJson(res.data);

      final starships = await _getStarships(character.starships);
      final homeworld = await _getHomeworld(character.homeworld);
      final vehicles = await _getVehicles(character.vehicles);

      return right(CharacterDto.fromJson(res.data).toDomain().copyWith(
            starships: starships,
            homeworld: homeworld,
            vehicles: vehicles,
          ));
    } on ApiFailure catch (e) {
      return left(e);
    } catch (e) {
      return left(ApiFailure());
    }
  }

  /// {@macro starwars_repository}
  ///
  /// Gets a [List] of [Homeworld] objects from the [StarwarsApi]
  ///
  /// Throws an [ApiFailure] if the call fails.
  Future<Homeworld> _getHomeworld(String path) async {
    try {
      final res = await _apiProvider.getHomeworld(path);
      return HomeworldDto.fromJson(res.data).toDomain();
    } catch (e) {
      rethrow;
    }
  }

  /// {@macro starwars_repository}
  ///
  /// Gets a [List] of [Starship] objects from the [StarwarsApi]
  ///
  /// Throws an [ApiFailure] if the call fails.
  Future<List<Starship>> _getStarships(List<String> paths) async {
    try {
      final res = await Future.wait(
          paths.map((path) => _apiProvider.getStarship(path)));
      return res.map((e) => StarshipDto.fromJson(e.data).toDomain()).toList();
    } catch (e) {
      rethrow;
    }
  }

  /// {@macro starwars_repository}
  ///
  /// Gets a [List] of [Vehicle] objects from the [StarwarsApi]
  ///
  /// Throws an [ApiFailure] if the call fails.
  Future<List<Vehicle>> _getVehicles(List<String> paths) async {
    try {
      final res =
          await Future.wait(paths.map((path) => _apiProvider.getVehicle(path)));
      return res.map((e) => VehicleDto.fromJson(e.data).toDomain()).toList();
    } catch (e) {
      rethrow;
    }
  }

  /// {@macro starwars_repository}
  ///
  /// Reports a sighting of a character to the [StarwarsApi]
  ///
  /// Throws an [ApiFailure] if the call fails.
  Future<Either<ApiFailure, void>> reportSighting(
      int userId, DateTime dateTime, String characterName) async {
    try {
      await _apiProvider.reportSighting(userId, dateTime, characterName);
      return right(null);
    } on ApiFailure catch (e) {
      return left(e);
    } catch (e) {
      return left(ApiFailure());
    }
  }
}
