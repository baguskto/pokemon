import 'package:get/get_connect/connect.dart';
import '../../utils/strings.dart';

class PokemonDetailProvider extends GetConnect {
  final _baseUrl = baseUrl;
  final _pokemonEndpoint = 'pokemon';
  final _evolutionEndpoint = 'evolution-chain';
  final _speciesEndpoint = 'pokemon-species';

  Future<Response> fetchPokemonDetail(String name) {
    final url = '$_baseUrl/$_pokemonEndpoint/$name';
    return get(url);
  }

  Future<Response> fetchEvolution(int id) {
    final url = '$_baseUrl/$_evolutionEndpoint/$id';
    return get(url);
  }

  Future<Response> fetchSpecies(int id) {
    final url = '$_baseUrl/$_speciesEndpoint/$id';
    return get(url);
  }
}
