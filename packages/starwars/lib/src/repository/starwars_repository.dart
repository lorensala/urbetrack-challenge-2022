import 'package:dartz/dartz.dart';

import '../api/starwars_api.dart';
import '../dto/dto.dart';
import '../models/models.dart';

class StarWarsRepository {
  final StarWarsApi _apiProvider;
  StarWarsRepository(this._apiProvider);

  Future<Either<StarWarsFailure, People>> getPeople(int page) async {
    try {
      final res = await _apiProvider.getPeople(page);
      return right(PeopleDto.fromJson(res.data).toDomain());
    } on StarWarsFailure catch (e) {
      return left(e);
    } catch (e) {
      return left(StarWarsFailure(e.toString()));
    }
  }

  Future<Either<StarWarsFailure, Character>> getCharacter(
    int id,
  ) async {
    try {
      final res = await _apiProvider.getCharacter(id);
      final characterDto = CharacterDto.fromJson(res.data);

      final starshipsRes = await Future.wait(
          characterDto.starships.map((url) => _apiProvider.getStarship(url)));
      final homeworldRes =
          await _apiProvider.getHomeworld(characterDto.homeworld);
      final vehiclesRes = await Future.wait(characterDto.vehicles
          .map((vehicle) => _apiProvider.getVehicle(vehicle)));

      final character = CharacterDto.fromJson(res.data).toDomain();
      final starships = starshipsRes
          .map((e) => StarshipDto.fromJson(e.data).toDomain())
          .toList();
      final homeworld = HomeworldDto.fromJson(homeworldRes.data).toDomain();
      final vehicles = vehiclesRes
          .map((e) => VehicleDto.fromJson(e.data).toDomain())
          .toList();

      return right(character.copyWith(
        starship: starships,
        homeworld: homeworld,
        vehicle: vehicles,
      ));
    } on StarWarsFailure catch (e) {
      return left(e);
    } catch (e) {
      return left(StarWarsFailure(e.toString()));
    }
  }

  Future<Either<StarWarsFailure, void>> reportSighting(
      int userId, DateTime dateTime, String characterName) async {
    try {
      await _apiProvider.reportSighting(userId, dateTime, characterName);
      return right(null);
    } on StarWarsFailure catch (e) {
      return left(e);
    } catch (e) {
      return left(StarWarsFailure(e.toString()));
    }
  }

  Future<Either<StarWarsFailure, Homeworld>> getHomeworld(String path) async {
    try {
      final res = await _apiProvider.getHomeworld(path);
      return right(HomeworldDto.fromJson(res.data).toDomain());
    } on StarWarsFailure catch (e) {
      return left(e);
    } catch (e) {
      return left(StarWarsFailure(e.toString()));
    }
  }

  Future<Either<StarWarsFailure, Starship>> getStarship(String path) async {
    try {
      final res = await _apiProvider.getStarship(path);
      return right(StarshipDto.fromJson(res.data).toDomain());
    } on StarWarsFailure catch (e) {
      return left(e);
    } catch (e) {
      return left(StarWarsFailure(e.toString()));
    }
  }
}
