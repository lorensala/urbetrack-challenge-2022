import 'package:freezed_annotation/freezed_annotation.dart';
import 'models.dart';

part 'character.freezed.dart';

@freezed
class Character with _$Character {
  const Character._();

  const factory Character({
    required CharacterId id,
    required StarWarsDate birthYear,
    required String eyeColor,
    required String gender,
    required String hairColor,
    required int height,
    required int mass,
    required String name,
    required String skinColor,
    required Homeworld homeworld,
    required List<Starship> starship,
    required List<Vehicle> vehicle,
  }) = _Character;

  bool get isEmpty => id == -1;

  factory Character.empty() => Character(
      id: -1,
      birthYear: '',
      eyeColor: '',
      gender: '',
      hairColor: '',
      height: -1,
      mass: -1,
      name: '',
      skinColor: '',
      homeworld: Homeworld.empty(),
      starship: [],
      vehicle: []);
}

typedef CharacterId = int;
typedef StarWarsDate = String;
