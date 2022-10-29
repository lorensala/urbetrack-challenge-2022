import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:starwars/src/dto/dto.dart';
import 'package:starwars/src/models/character.dart';

void main() {
  group('CharacterDto', () {
    const json = ''' 
    {
            "name": "Luke Skywalker", 
            "height": "172", 
            "mass": "77", 
            "hair_color": "blond", 
            "skin_color": "fair", 
            "eye_color": "blue", 
            "birth_year": "19BBY", 
            "gender": "male", 
            "homeworld": "https://swapi.dev/api/planets/1/", 
            "films": [
                "https://swapi.dev/api/films/1/", 
                "https://swapi.dev/api/films/2/", 
                "https://swapi.dev/api/films/3/", 
                "https://swapi.dev/api/films/6/"
            ], 
            "species": [], 
            "vehicles": [
                "https://swapi.dev/api/vehicles/14/", 
                "https://swapi.dev/api/vehicles/30/"
            ], 
            "starships": [
                "https://swapi.dev/api/starships/12/", 
                "https://swapi.dev/api/starships/22/"
            ], 
            "created": "2014-12-09T13:50:51.644000Z", 
            "edited": "2014-12-20T21:17:56.891000Z", 
            "url": "https://swapi.dev/api/people/1/"
        }
    ''';

    group('fromJson', () {
      test('should return a valid model from correct json', () {
        final dto = CharacterDto.fromJson(jsonDecode(json));
        // asserts that the dto is not null
        expect(dto, isNotNull);
        // asserts that the dto is a CharacterDto
        expect(dto, isA<CharacterDto>());
      });
    });
    group('toDomain', () {
      test('should return a valid domain model', () {
        // act
        final dto = CharacterDto.fromJson(jsonDecode(json));
        final character = dto.toDomain();
        // assert
        expect(character, isNotNull);
        expect(character, isA<Character>());
      });
    });
  });
}
