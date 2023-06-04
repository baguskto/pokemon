

import '../models/models.dart';
import '../provider/pokemon_detail_provider.dart';

class PokemonDetailRepository {
  final PokemonDetailProvider _provider;

  PokemonDetailRepository({required PokemonDetailProvider provider})
      : _provider = provider;

  Future<PokemonDetail?> fetchPokemonDetail(String name) async {
    final response = await _provider.fetchPokemonDetail(name);
    if (response.isOk) {
      return PokemonDetail.fromJson(response.body);
    } else {
      return null;
    }
  }

  Future<Evolution?> fetchEvolution(int id) async {
    final response = await _provider.fetchEvolution(id);
    if (response.isOk) {
      return Evolution.fromJson(response.body);
    } else {
      return null;
    }
  }

  Future<PokemonSpecies?> fetchSpecies(int id) async {
    final response = await _provider.fetchSpecies(id);
    if (response.isOk) {
      return PokemonSpecies.fromJson(response.body);
    } else {
      return null;
    }
  }
}

