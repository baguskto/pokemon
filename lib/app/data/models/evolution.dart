import 'dart:convert';

import 'models.dart';

class Evolution {
  Evolution({
    this.babyTriggerItem,
    required this.chain,
    required this.id,
  });

  final dynamic babyTriggerItem;
  final Chain chain;
  final int id;

  Evolution copyWith({
    dynamic babyTriggerItem,
    required Chain chain,
    required int id,
  }) =>
      Evolution(
        babyTriggerItem: babyTriggerItem ?? this.babyTriggerItem,
        chain: chain ?? this.chain,
        id: id ?? this.id,
      );

  factory Evolution.fromRawJson(String str) =>
      Evolution.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Evolution.fromJson(Map<String, dynamic> json) => Evolution(
        babyTriggerItem: json["baby_trigger_item"],
        chain: Chain.fromJson(json["chain"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "baby_trigger_item": babyTriggerItem,
        "chain": chain.toJson(),
        "id": id,
      };
}

class Chain {
  Chain({
    required this.evolutionDetails,
    this.evolvesTo,
    required this.isBaby,
    required this.species,
  });

  final List<EvolutionDetail> evolutionDetails;
  final List<Chain>? evolvesTo;
  final bool isBaby;
  final Species species;

  Chain copyWith({
    required List<EvolutionDetail> evolutionDetails,
    List<Chain>? evolvesTo,
    required bool isBaby,
    required Species species,
  }) =>
      Chain(
        evolutionDetails: evolutionDetails ?? this.evolutionDetails,
        evolvesTo: evolvesTo ?? this.evolvesTo,
        isBaby: isBaby ?? this.isBaby,
        species: species ?? this.species,
      );

  factory Chain.fromRawJson(String str) => Chain.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Chain.fromJson(Map<String, dynamic> json) => Chain(
        evolutionDetails: List<EvolutionDetail>.from(
            json["evolution_details"].map((x) => EvolutionDetail.fromJson(x))),
        evolvesTo: json["evolves_to"] == null
            ? []
            : List<Chain>.from(
                json["evolves_to"].map((x) => Chain.fromJson(x))),
        isBaby: json["is_baby"],
        species: Species.fromJson(json["species"]),
      );

  Map<String, dynamic> toJson() => {
        "evolution_details":
            List<dynamic>.from(evolutionDetails.map((x) => x.toJson())),
        "evolves_to": List<dynamic>.from(evolvesTo!.map((x) => x.toJson())),
        "is_baby": isBaby,
        "species": species.toJson(),
      };
}

class EvolutionDetail {
  EvolutionDetail({
    this.gender,
    this.heldItem,
    this.item,
    this.knownMove,
    this.knownMoveType,
    this.location,
    this.minAffection,
    this.minBeauty,
    this.minHappiness,
    required this.minLevel,
    required this.needsOverworldRain,
    this.partySpecies,
    this.partyType,
    this.relativePhysicalStats,
    required this.timeOfDay,
    this.tradeSpecies,
    required this.trigger,
    required this.turnUpsideDown,
  });

  final dynamic gender;
  final dynamic heldItem;
  final dynamic item;
  final dynamic knownMove;
  final dynamic knownMoveType;
  final dynamic location;
  final dynamic minAffection;
  final dynamic minBeauty;
  final dynamic minHappiness;
  final dynamic minLevel;
  final bool needsOverworldRain;
  final dynamic partySpecies;
  final dynamic partyType;
  final dynamic relativePhysicalStats;
  final String timeOfDay;
  final dynamic tradeSpecies;
  final Species trigger;
  final bool turnUpsideDown;

  EvolutionDetail copyWith({
    dynamic gender,
    dynamic heldItem,
    dynamic item,
    dynamic knownMove,
    dynamic knownMoveType,
    dynamic location,
    dynamic minAffection,
    dynamic minBeauty,
    dynamic minHappiness,
    dynamic minLevel,
    required bool needsOverworldRain,
    dynamic partySpecies,
    dynamic partyType,
    dynamic relativePhysicalStats,
    required String timeOfDay,
    dynamic tradeSpecies,
    required Species trigger,
    required bool turnUpsideDown,
  }) =>
      EvolutionDetail(
        gender: gender ?? this.gender,
        heldItem: heldItem ?? this.heldItem,
        item: item ?? this.item,
        knownMove: knownMove ?? this.knownMove,
        knownMoveType: knownMoveType ?? this.knownMoveType,
        location: location ?? this.location,
        minAffection: minAffection ?? this.minAffection,
        minBeauty: minBeauty ?? this.minBeauty,
        minHappiness: minHappiness ?? this.minHappiness,
        minLevel: minLevel ?? this.minLevel,
        needsOverworldRain: needsOverworldRain ?? this.needsOverworldRain,
        partySpecies: partySpecies ?? this.partySpecies,
        partyType: partyType ?? this.partyType,
        relativePhysicalStats:
            relativePhysicalStats ?? this.relativePhysicalStats,
        timeOfDay: timeOfDay ?? this.timeOfDay,
        tradeSpecies: tradeSpecies ?? this.tradeSpecies,
        trigger: trigger ?? this.trigger,
        turnUpsideDown: turnUpsideDown ?? this.turnUpsideDown,
      );

  factory EvolutionDetail.fromRawJson(String str) =>
      EvolutionDetail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EvolutionDetail.fromJson(Map<String, dynamic> json) =>
      EvolutionDetail(
        gender: json["gender"],
        heldItem: json["held_item"],
        item: json["item"],
        knownMove: json["known_move"],
        knownMoveType: json["known_move_type"],
        location: json["location"],
        minAffection: json["min_affection"],
        minBeauty: json["min_beauty"],
        minHappiness: json["min_happiness"],
        minLevel: json["min_level"] ?? '-',
        needsOverworldRain: json["needs_overworld_rain"],
        partySpecies: json["party_species"],
        partyType: json["party_type"],
        relativePhysicalStats: json["relative_physical_stats"],
        timeOfDay: json["time_of_day"],
        tradeSpecies: json["trade_species"],
        trigger: Species.fromJson(json["trigger"]),
        turnUpsideDown: json["turn_upside_down"],
      );

  Map<String, dynamic> toJson() => {
        "gender": gender,
        "held_item": heldItem,
        "item": item,
        "known_move": knownMove,
        "known_move_type": knownMoveType,
        "location": location,
        "min_affection": minAffection,
        "min_beauty": minBeauty,
        "min_happiness": minHappiness,
        "min_level": minLevel,
        "needs_overworld_rain": needsOverworldRain,
        "party_species": partySpecies,
        "party_type": partyType,
        "relative_physical_stats": relativePhysicalStats,
        "time_of_day": timeOfDay,
        "trade_species": tradeSpecies,
        "trigger": trigger.toJson(),
        "turn_upside_down": turnUpsideDown,
      };
}
