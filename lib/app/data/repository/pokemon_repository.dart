//
import '../models/models.dart';
import '../provider/providers.dart';

class PokemonRepository {
  final PokemonProvider provider;

  PokemonRepository({required this.provider}) : assert(provider != null, '');

  Future<Pokemon?> fetchPokemon(int offset, int? limit) async {
    final rp = await provider.fetchPokemons(offset, limit ?? 50);
    if (rp.isOk) {
      return Pokemon.fromJson(rp.body);
    }
    return null;
  }
}



