class CharacterDetails {
  final int id;
  final String birthYear;
  final String eyeColor;
  final String gender;
  final String hairColor;
  final String height;
  final String homeworld;
  final String mass;
  final String name;
  final String skinColor;
  final PlanetDetails planetDetails;
  final List<StarshipDetails> starshipDetails;
  final List<VehicleDetails> vehicleDetails;
  CharacterDetails({
    required this.id,
    required this.birthYear,
    required this.eyeColor,
    required this.gender,
    required this.hairColor,
    required this.height,
    required this.homeworld,
    required this.mass,
    required this.name,
    required this.skinColor,
    required this.planetDetails,
    required this.starshipDetails,
    required this.vehicleDetails,
  });
}

class PlanetDetails {
  final String climate;
  final String diameter;
  final String gravity;
  final String name;
  final String orbitalPeriod;
  final String population;
  final String rotationPeriod;
  PlanetDetails({
    required this.climate,
    required this.diameter,
    required this.gravity,
    required this.name,
    required this.orbitalPeriod,
    required this.population,
    required this.rotationPeriod,
  });
}

class StarshipDetails {
  final String cargoCapacity;
  final String consumables;
  final String costInCredits;
  final String crew;
  final String hyperdriveRating;
  final String length;
  final String manufacturer;
  final String maxAtmospheringSpeed;
  final String model;
  final String name;
  final String passengers;

  StarshipDetails({
    required this.cargoCapacity,
    required this.consumables,
    required this.costInCredits,
    required this.crew,
    required this.hyperdriveRating,
    required this.length,
    required this.manufacturer,
    required this.maxAtmospheringSpeed,
    required this.model,
    required this.name,
    required this.passengers,
  });
}

class VehicleDetails {
  final String cargoCapacity;
  final String consumables;
  final String costInCredits;
  final String crew;
  final String length;
  final String manufacturer;
  final String maxAtmospheringSpeed;
  final String model;
  final String name;
  final String passengers;
  final String vehicleClass;
  VehicleDetails({
    required this.cargoCapacity,
    required this.consumables,
    required this.costInCredits,
    required this.crew,
    required this.length,
    required this.manufacturer,
    required this.maxAtmospheringSpeed,
    required this.model,
    required this.name,
    required this.passengers,
    required this.vehicleClass,
  });
}
