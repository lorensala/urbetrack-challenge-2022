import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../helpers/helpers.dart';
import '../domain/character.dart';
import 'character_api.dart';

class CharacterRepository {
  final CharacterApi _characterApi;

  CharacterRepository(this._characterApi);

  Future<Either<CharacterFailure, Map<String, dynamic>>> getCharacters(
      [String? page]) async {
    try {
      final response = await _characterApi.getCharacters(page);

      final List<Character> characters = response.data['results']
          .map<Character>((json) => Character.fromJson(json))
          .toList();
      final next = response.data['next'] as String?;
      final count = response.data['count'] as int;

      return Right({'characters': characters, 'next': next, 'count': count});
    } on DioError catch (e) {
      return Left(CharacterFailure(e.message));
    } catch (e) {
      return Left(CharacterFailure(e.toString()));
    }
  }

  Future<Either<CharacterFailure, Character>> getCharacter(int id) async {
    try {
      final response = await _characterApi.getCharacter(id);
      return Right(Character.fromJson(response.data));
    } on DioError catch (e) {
      return Left(CharacterFailure(e.message));
    } catch (e) {
      return Left(CharacterFailure(e.toString()));
    }
  }
}

class CharacterFailure extends Failure {
  CharacterFailure(String? message) : super(message ?? 'Character API Failure');
}
