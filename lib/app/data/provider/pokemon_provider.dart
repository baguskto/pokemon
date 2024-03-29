import 'package:get/get_connect/connect.dart';
import '../../utils/strings.dart';

class PokemonProvider extends GetConnect {
  final _baseUrl = baseUrl;
  final _endpoint = 'pokemon';

  Future<Response> fetchPokemons(int offset, int limit) {
    final url = '$_baseUrl/$_endpoint?limit=$limit&offset=$offset';
    return get(url);
  }

  Future<Response> fetchPokemonDetails(int id) {
    final url = '$_baseUrl/$_endpoint/$id';
    return get(url);
  }
}
