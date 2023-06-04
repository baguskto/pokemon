import 'dart:convert';

class PokemonSpecies {
  PokemonSpecies({
    required this.baseHappiness,
    required this.captureRate,
    required this.color,
    required this.eggGroups,
    required this.evolutionChain,
    this.evolvesFromSpecies,
    required this.flavorTextEntries,
    required this.formDescriptions,
    required this.formsSwitchable,
    required this.genderRate,
    required this.genera,
    required this.generation,
    required this.growthRate,
    required this.habitat,
    required this.hasGenderDifferences,
    required this.hatchCounter,
    required this.id,
    required this.isBaby,
    required this.isLegendary,
    required this.isMythical,
    required this.name,
    required this.names,
    required this.order,
    required this.palParkEncounters,
    required this.pokedexNumbers,
    required this.shape,
    required this.varieties,
  });

  final int baseHappiness;
  final int captureRate;
  final PokemonColor color;
  final List<PokemonColor> eggGroups;
  final EvolutionChain evolutionChain;
  final PokemonColor? evolvesFromSpecies;
  final List<FlavorTextEntry> flavorTextEntries;
  final List<dynamic> formDescriptions;
  final bool formsSwitchable;
  final int genderRate;
  final List<Genus> genera;
  final PokemonColor generation;
  final PokemonColor growthRate;
  final PokemonColor habitat;
  final bool hasGenderDifferences;
  final int hatchCounter;
  final int id;
  final bool isBaby;
  final bool isLegendary;
  final bool isMythical;
  final String name;
  final List<Name> names;
  final int order;
  final List<PalParkEncounter> palParkEncounters;
  final List<PokedexNumber> pokedexNumbers;
  final PokemonColor shape;
  final List<Variety> varieties;

  PokemonSpecies copyWith({
    required int baseHappiness,
    required int captureRate,
    required PokemonColor color,
    required List<PokemonColor> eggGroups,
    required EvolutionChain evolutionChain,
    PokemonColor? evolvesFromSpecies,
    required List<FlavorTextEntry> flavorTextEntries,
    required List<dynamic> formDescriptions,
    required bool formsSwitchable,
    required int genderRate,
    required List<Genus> genera,
    required PokemonColor generation,
    required PokemonColor growthRate,
    required PokemonColor habitat,
    required bool hasGenderDifferences,
    required int hatchCounter,
    required int id,
    required bool isBaby,
    required bool isLegendary,
    required bool isMythical,
    required String name,
    required List<Name> names,
    required int order,
    required List<PalParkEncounter> palParkEncounters,
    required List<PokedexNumber> pokedexNumbers,
    required PokemonColor shape,
    required List<Variety> varieties,
  }) =>
      PokemonSpecies(
        baseHappiness: baseHappiness ?? this.baseHappiness,
        captureRate: captureRate ?? this.captureRate,
        color: color ?? this.color,
        eggGroups: eggGroups ?? this.eggGroups,
        evolutionChain: evolutionChain ?? this.evolutionChain,
        evolvesFromSpecies: evolvesFromSpecies ?? this.evolvesFromSpecies,
        flavorTextEntries: flavorTextEntries ?? this.flavorTextEntries,
        formDescriptions: formDescriptions ?? this.formDescriptions,
        formsSwitchable: formsSwitchable ?? this.formsSwitchable,
        genderRate: genderRate ?? this.genderRate,
        genera: genera ?? this.genera,
        generation: generation ?? this.generation,
        growthRate: growthRate ?? this.growthRate,
        habitat: habitat ?? this.habitat,
        hasGenderDifferences: hasGenderDifferences ?? this.hasGenderDifferences,
        hatchCounter: hatchCounter ?? this.hatchCounter,
        id: id ?? this.id,
        isBaby: isBaby ?? this.isBaby,
        isLegendary: isLegendary ?? this.isLegendary,
        isMythical: isMythical ?? this.isMythical,
        name: name ?? this.name,
        names: names ?? this.names,
        order: order ?? this.order,
        palParkEncounters: palParkEncounters ?? this.palParkEncounters,
        pokedexNumbers: pokedexNumbers ?? this.pokedexNumbers,
        shape: shape ?? this.shape,
        varieties: varieties ?? this.varieties,
      );

  factory PokemonSpecies.fromRawJson(String str) =>
      PokemonSpecies.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PokemonSpecies.fromJson(Map<String, dynamic> json) => PokemonSpecies(
        baseHappiness: json["base_happiness"],
        captureRate: json["capture_rate"],
        color: PokemonColor.fromJson(json["color"]),
        eggGroups: List<PokemonColor>.from(
            json["egg_groups"].map((x) => PokemonColor.fromJson(x))),
        evolutionChain: EvolutionChain.fromJson(json["evolution_chain"]),
        evolvesFromSpecies: json["evolves_from_species"] == null
            ? null
            : PokemonColor.fromJson(json["evolves_from_species"]),
        flavorTextEntries: List<FlavorTextEntry>.from(
            json["flavor_text_entries"]
                .map((x) => FlavorTextEntry.fromJson(x))),
        formDescriptions:
            List<dynamic>.from(json["form_descriptions"].map((x) => x)),
        formsSwitchable: json["forms_switchable"],
        genderRate: json["gender_rate"],
        genera: List<Genus>.from(json["genera"].map((x) => Genus.fromJson(x))),
        generation: PokemonColor.fromJson(json["generation"]),
        growthRate: PokemonColor.fromJson(json["growth_rate"]),
        habitat: PokemonColor.fromJson(json["habitat"]),
        hasGenderDifferences: json["has_gender_differences"],
        hatchCounter: json["hatch_counter"],
        id: json["id"],
        isBaby: json["is_baby"],
        isLegendary: json["is_legendary"],
        isMythical: json["is_mythical"],
        name: json["name"],
        names: List<Name>.from(json["names"].map((x) => Name.fromJson(x))),
        order: json["order"],
        palParkEncounters: List<PalParkEncounter>.from(
            json["pal_park_encounters"]
                .map((x) => PalParkEncounter.fromJson(x))),
        pokedexNumbers: List<PokedexNumber>.from(
            json["pokedex_numbers"].map((x) => PokedexNumber.fromJson(x))),
        shape: PokemonColor.fromJson(json["shape"]),
        varieties: List<Variety>.from(
            json["varieties"].map((x) => Variety.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "base_happiness": baseHappiness,
        "capture_rate": captureRate,
        "color": color.toJson(),
        "egg_groups": List<dynamic>.from(eggGroups.map((x) => x.toJson())),
        "evolution_chain": evolutionChain.toJson(),
        "evolves_from_species": evolvesFromSpecies!.toJson(),
        "flavor_text_entries":
            List<dynamic>.from(flavorTextEntries.map((x) => x.toJson())),
        "form_descriptions": List<dynamic>.from(formDescriptions.map((x) => x)),
        "forms_switchable": formsSwitchable,
        "gender_rate": genderRate,
        "genera": List<dynamic>.from(genera.map((x) => x.toJson())),
        "generation": generation.toJson(),
        "growth_rate": growthRate.toJson(),
        "habitat": habitat.toJson(),
        "has_gender_differences": hasGenderDifferences,
        "hatch_counter": hatchCounter,
        "id": id,
        "is_baby": isBaby,
        "is_legendary": isLegendary,
        "is_mythical": isMythical,
        "name": name,
        "names": List<dynamic>.from(names.map((x) => x.toJson())),
        "order": order,
        "pal_park_encounters":
            List<dynamic>.from(palParkEncounters.map((x) => x.toJson())),
        "pokedex_numbers":
            List<dynamic>.from(pokedexNumbers.map((x) => x.toJson())),
        "shape": shape.toJson(),
        "varieties": List<dynamic>.from(varieties.map((x) => x.toJson())),
      };
}

class PokemonColor {
  PokemonColor({
    required  this.name,
    required  this.url,
  });

  final String name;
  final String url;

  PokemonColor copyWith({
    required  String name,
    required   String url,
  }) =>
      PokemonColor(
        name: name ?? this.name,
        url: url ?? this.url,
      );

  factory PokemonColor.fromRawJson(String str) =>
      PokemonColor.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PokemonColor.fromJson(Map<String, dynamic> json) => PokemonColor(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}

class EvolutionChain {
  EvolutionChain({
    required  this.url,
  });

  final String url;

  EvolutionChain copyWith({
    required  String url,
  }) =>
      EvolutionChain(
        url: url ?? this.url,
      );

  factory EvolutionChain.fromRawJson(String str) =>
      EvolutionChain.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EvolutionChain.fromJson(Map<String, dynamic> json) => EvolutionChain(
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
      };
}

class FlavorTextEntry {
  FlavorTextEntry({
    required  this.flavorText,
    required  this.language,
    required   this.version,
  });

  final String flavorText;
  final PokemonColor language;
  final PokemonColor version;

  FlavorTextEntry copyWith({
    required   String flavorText,
    required  PokemonColor language,
    required   PokemonColor version,
  }) =>
      FlavorTextEntry(
        flavorText: flavorText ?? this.flavorText,
        language: language ?? this.language,
        version: version ?? this.version,
      );

  factory FlavorTextEntry.fromRawJson(String str) =>
      FlavorTextEntry.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FlavorTextEntry.fromJson(Map<String, dynamic> json) =>
      FlavorTextEntry(
        flavorText: json["flavor_text"],
        language: PokemonColor.fromJson(json["language"]),
        version: PokemonColor.fromJson(json["version"]),
      );

  Map<String, dynamic> toJson() => {
        "flavor_text": flavorText,
        "language": language.toJson(),
        "version": version.toJson(),
      };
}

class Genus {
  Genus({
    required    this.genus,
    required   this.language,
  });

  final String genus;
  final PokemonColor language;

  Genus copyWith({
    required  String genus,
    required  PokemonColor language,
  }) =>
      Genus(
        genus: genus ?? this.genus,
        language: language ?? this.language,
      );

  factory Genus.fromRawJson(String str) => Genus.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Genus.fromJson(Map<String, dynamic> json) => Genus(
        genus: json["genus"],
        language: PokemonColor.fromJson(json["language"]),
      );

  Map<String, dynamic> toJson() => {
        "genus": genus,
        "language": language.toJson(),
      };
}

class Name {
  Name({
    required  this.language,
    required  this.name,
  });

  final PokemonColor language;
  final String name;

  Name copyWith({
    required   PokemonColor language,
    required  String name,
  }) =>
      Name(
        language: language ?? this.language,
        name: name ?? this.name,
      );

  factory Name.fromRawJson(String str) => Name.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        language: PokemonColor.fromJson(json["language"]),
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "language": language.toJson(),
        "name": name,
      };
}

class PalParkEncounter {
  PalParkEncounter({
    required  this.area,
    required  this.baseScore,
    required   this.rate,
  });

  final PokemonColor area;
  final int baseScore;
  final int rate;

  PalParkEncounter copyWith({
    required  PokemonColor area,
    required  int baseScore,
    required   int rate,
  }) =>
      PalParkEncounter(
        area: area ?? this.area,
        baseScore: baseScore ?? this.baseScore,
        rate: rate ?? this.rate,
      );

  factory PalParkEncounter.fromRawJson(String str) =>
      PalParkEncounter.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PalParkEncounter.fromJson(Map<String, dynamic> json) =>
      PalParkEncounter(
        area: PokemonColor.fromJson(json["area"]),
        baseScore: json["base_score"],
        rate: json["rate"],
      );

  Map<String, dynamic> toJson() => {
        "area": area.toJson(),
        "base_score": baseScore,
        "rate": rate,
      };
}

class PokedexNumber {
  PokedexNumber({
    required  this.entryNumber,
    required   this.pokedex,
  });

  final int entryNumber;
  final PokemonColor pokedex;

  PokedexNumber copyWith({
    required   int entryNumber,
    required   PokemonColor pokedex,
  }) =>
      PokedexNumber(
        entryNumber: entryNumber ?? this.entryNumber,
        pokedex: pokedex ?? this.pokedex,
      );

  factory PokedexNumber.fromRawJson(String str) =>
      PokedexNumber.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PokedexNumber.fromJson(Map<String, dynamic> json) => PokedexNumber(
        entryNumber: json["entry_number"],
        pokedex: PokemonColor.fromJson(json["pokedex"]),
      );

  Map<String, dynamic> toJson() => {
        "entry_number": entryNumber,
        "pokedex": pokedex.toJson(),
      };
}

class Variety {
  Variety({
    required  this.isDefault,
    required   this.pokemon,
  });

  final bool isDefault;
  final PokemonColor pokemon;

  Variety copyWith({
    required   bool isDefault,
    required  PokemonColor pokemon,
  }) =>
      Variety(
        isDefault: isDefault ?? this.isDefault,
        pokemon: pokemon ?? this.pokemon,
      );

  factory Variety.fromRawJson(String str) => Variety.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Variety.fromJson(Map<String, dynamic> json) => Variety(
        isDefault: json["is_default"],
        pokemon: PokemonColor.fromJson(json["pokemon"]),
      );

  Map<String, dynamic> toJson() => {
        "is_default": isDefault,
        "pokemon": pokemon.toJson(),
      };
}
