import 'package:dio/dio.dart';

import 'api_failure.dart';

const kBaseUrl = 'https://swapi.dev/api';
const kSightingUrl = 'https://jsonplaceholder.typicode.com/posts';

abstract class StarWarsApi {
  /// Get a list of people
  ///
  /// [page] is the page number to fetch
  ///
  /// Returns a [PeopleResponse] object
  ///
  /// Throws [ApiFailure] if the call fails
  Future<Response> getPeople(int page);

  // Get a character
  ///
  /// [id] is the id of the character to fetch
  ///
  /// Returns a [Response] object
  ///
  /// Throws [ApiFailure] if the call fails
  Future<Response> getCharacter(int id);

  /// Get a home world
  ///
  /// [path] is the url to the planet
  ///
  /// Returns a [PlanetResponse] object
  ///
  /// Throws [ApiFailure] if the call fails
  Future<Response> getHomeworld(String path);

  /// Get a starship
  ///
  /// [path] is the url to the starship
  ///
  /// Returns a [Response] object
  ///
  /// Throws [ApiFailure] if the call fails
  Future<Response> getStarship(String path);

  /// Get a vehicle
  ///
  /// [path] is the url to the vehicle
  ///
  /// Returns a [VehicleDto] object
  ///
  /// Throws [ApiFailure] if the call fails
  Future<Response> getVehicle(String path);

  /// Report a sighting
  ///
  /// [userId] is the id of a character
  /// [dateTime] is the date and time of the sighting
  /// [characterName] is the name of the character
  ///
  /// Throws [ApiFailure] if the call fails
  Future<void> reportSighting(
      int userId, DateTime dateTime, String characterName);
}

class SwapiApi extends StarWarsApi {
  final Dio _httpClient;
  SwapiApi(this._httpClient);

  @override
  Future<Response> getPeople(int page) async {
    try {
      return await _httpClient
          .get('$kBaseUrl/people/', queryParameters: {'page': page});
    } on DioError catch (e) {
      throw ApiFailure.fromDioErrorType(e);
    } catch (e) {
      throw ApiFailure(e.toString());
    }
  }

  @override
  Future<Response> getHomeworld(String path) async {
    try {
      return await _httpClient.get(path);
    } on DioError catch (e) {
      throw ApiFailure.fromDioErrorType(e);
    } catch (e) {
      throw ApiFailure(e.toString());
    }
  }

  @override
  Future<Response> getStarship(String path) async {
    try {
      return await _httpClient.get(path);
    } on DioError catch (e) {
      throw ApiFailure.fromDioErrorType(e);
    } catch (e) {
      throw ApiFailure(e.toString());
    }
  }

  @override
  Future<Response> getCharacter(int id) async {
    try {
      return await _httpClient.get('$kBaseUrl/people/$id');
    } on DioError catch (e) {
      throw ApiFailure.fromDioErrorType(e);
    } catch (e) {
      throw ApiFailure(e.toString());
    }
  }

  @override
  Future<Response> getVehicle(String path) async {
    try {
      return await _httpClient.get(path);
    } on DioError catch (e) {
      throw ApiFailure.fromDioErrorType(e);
    } catch (e) {
      throw ApiFailure(e.toString());
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
      throw ApiFailure.fromDioErrorType(e);
    } catch (e) {
      throw ApiFailure(e.toString());
    }
  }
}
