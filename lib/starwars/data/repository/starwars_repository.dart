import 'package:dartz/dartz.dart';
import '../../../helpers/helpers.dart';
import '../api/starwars_api.dart';
import '../../models/character_details.dart';

import '../models/models.dart';

class StarWarsRepository {
  final StarWarsApi _apiProvider;
  StarWarsRepository(this._apiProvider);

  Future<Either<StarWarsFailure, PeopleResponse>> getPeople(String path) async {
    try {
      final res = await _apiProvider.getPeople(path);
      return right(res);
    } on StarWarsFailure catch (e) {
      return left(e);
    } catch (e) {
      return left(StarWarsFailure(e.toString()));
    }
  }

  Future<Either<StarWarsFailure, CharacterDetails>> getCharacterDetails(
    CharacterResponse character,
  ) async {
    try {
      final starships = await Future.wait(character.starships
          .map((starship) => _apiProvider.getStarship(starship)));
      final homeworld = await _apiProvider.getPlanet(character.homeworld);
      final vehicles = await Future.wait(character.vehicles
          .map((vehicle) => _apiProvider.getVehicle(vehicle)));

      return right(CharacterDetails(
          id: getIdFromUrl(character.url),
          birthYear: character.birthYear,
          eyeColor: character.eyeColor,
          gender: capitalize(character.gender),
          hairColor: character.hairColor,
          height: character.height,
          homeworld: character.homeworld,
          mass: character.mass,
          name: character.name,
          skinColor: character.skinColor,
          planetDetails: PlanetDetails(
              climate: homeworld.climate,
              diameter: homeworld.diameter,
              gravity: homeworld.gravity,
              name: homeworld.name,
              orbitalPeriod: homeworld.orbitalPeriod,
              population: homeworld.population,
              rotationPeriod: homeworld.rotationPeriod),
          starshipDetails: starships
              .map((starship) => StarshipDetails(
                    cargoCapacity: starship.cargoCapacity,
                    consumables: starship.consumables,
                    costInCredits: starship.costInCredits,
                    crew: starship.crew,
                    hyperdriveRating: starship.hyperdriveRating,
                    length: starship.length,
                    manufacturer: starship.manufacturer,
                    maxAtmospheringSpeed: starship.maxAtmospheringSpeed,
                    model: starship.model,
                    name: starship.name,
                    passengers: starship.passengers,
                  ))
              .toList(),
          vehicleDetails: vehicles
              .map((vehicle) => VehicleDetails(
                  cargoCapacity: vehicle.cargoCapacity,
                  consumables: vehicle.consumables,
                  costInCredits: vehicle.costInCredits,
                  crew: vehicle.crew,
                  length: vehicle.length,
                  manufacturer: vehicle.manufacturer,
                  maxAtmospheringSpeed: vehicle.maxAtmospheringSpeed,
                  model: vehicle.model,
                  name: vehicle.name,
                  passengers: vehicle.passengers,
                  vehicleClass: vehicle.vehicleClass))
              .toList()));
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

  Future<Either<StarWarsFailure, PlanetResponse>> getPlanet(String path) async {
    try {
      final res = await _apiProvider.getPlanet(path);
      return right(res);
    } on StarWarsFailure catch (e) {
      return left(e);
    } catch (e) {
      return left(StarWarsFailure(e.toString()));
    }
  }

  Future<Either<StarWarsFailure, StarshipResponse>> getStarship(
      String path) async {
    try {
      final res = await _apiProvider.getStarship(path);
      return right(res);
    } on StarWarsFailure catch (e) {
      return left(e);
    } catch (e) {
      return left(StarWarsFailure(e.toString()));
    }
  }
}
