import 'package:dio/dio.dart';

import '../../helpers/helpers.dart';

class CharacterApi {
  final Dio _dio;

  CharacterApi(this._dio);

  Future<Response> getCharacters(String? next) async {
    if (next == null) {
      return await _dio.get('$baseUrl/people/');
    } else {
      return await _dio.get(next);
    }
  }

  Future<Response> getCharacter(int id) async {
    return await _dio.get('$baseUrl/people/$id');
  }
}
