import 'package:dio/dio.dart';
import '../../../helpers/helpers.dart';
import '../models/models.dart';

abstract class StarWarsApi {
  /// Get a list of people
  ///
  /// [path] is the url to the people list
  ///
  /// Returns a [PeopleResponse] object
  ///
  /// Throws [StarWarsFailure] if the call fails
  Future<PeopleResponse> getPeople(String path);

  // Get a character
  ///
  /// [path] is the url to the character
  ///
  /// Returns a [CharacterResponse] object
  ///
  /// Throws [StarWarsFailure] if the call fails
  Future<CharacterResponse> getCharacter(String path);

  /// Get a planet
  ///
  /// [path] is the url to the planet
  ///
  /// Returns a [PlanetResponse] object
  ///
  /// Throws [StarWarsFailure] if the call fails
  Future<PlanetResponse> getPlanet(String path);

  /// Get a starship
  ///
  /// [path] is the url to the starship
  ///
  /// Returns a [StarshipResponse] object
  ///
  /// Throws [StarWarsFailure] if the call fails
  Future<StarshipResponse> getStarship(String path);

  /// Get a vehicle
  ///
  /// [path] is the url to the vehicle
  ///
  /// Returns a [VehicleResponse] object
  ///
  /// Throws [StarWarsFailure] if the call fails
  Future<VehicleResponse> getVehicle(String path);

  Future<void> reportSighting(
      int userId, DateTime dateTime, String characterName);
}

class SwapiApiClient extends StarWarsApi {
  final Dio _httpClient;
  SwapiApiClient(this._httpClient);

  @override
  Future<PeopleResponse> getPeople(String path) async {
    try {
      final res = await _httpClient.get(path);
      return PeopleResponse.fromJson(res.data);
    } on DioError catch (e) {
      throw StarWarsFailure(e.message);
    } catch (e) {
      throw StarWarsFailure(e.toString());
    }
  }

  @override
  Future<PlanetResponse> getPlanet(String path) async {
    try {
      final res = await _httpClient.get(path);
      return PlanetResponse.fromJson(res.data);
    } on DioError catch (e) {
      throw StarWarsFailure(e.message);
    } catch (e) {
      throw StarWarsFailure(e.toString());
    }
  }

  @override
  Future<StarshipResponse> getStarship(String path) async {
    try {
      final res = await _httpClient.get(path);
      return StarshipResponse.fromJson(res.data);
    } on DioError catch (e) {
      throw StarWarsFailure(e.message);
    } catch (e) {
      throw StarWarsFailure(e.toString());
    }
  }

  @override
  Future<CharacterResponse> getCharacter(String path) async {
    try {
      final res = await _httpClient.get(path);
      return CharacterResponse.fromJson(res.data);
    } on DioError catch (e) {
      throw StarWarsFailure(e.message);
    } catch (e) {
      throw StarWarsFailure(e.toString());
    }
  }

  @override
  Future<VehicleResponse> getVehicle(String path) async {
    try {
      final res = await _httpClient.get(path);
      return VehicleResponse.fromJson(res.data);
    } on DioError catch (e) {
      throw StarWarsFailure(e.message);
    } catch (e) {
      throw StarWarsFailure(e.toString());
    }
  }

  @override
  Future<void> reportSighting(
      int userId, DateTime dateTime, String characterName) {
    try {
      return _httpClient.post(
        kSightingUrl,
        data: {
          'user_id': userId,
          'date': dateTime.toIso8601String(),
          'character_name': characterName,
        },
      );
    } on DioError catch (e) {
      throw StarWarsFailure(e.message);
    } catch (e) {
      throw StarWarsFailure(e.toString());
    }
  }
}

class StarWarsFailure implements Exception {
  final String message;

  StarWarsFailure([this.message = 'Unknown error']);
}
