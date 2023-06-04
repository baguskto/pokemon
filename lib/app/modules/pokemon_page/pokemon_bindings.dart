import 'package:get/get.dart';

import '../../data/provider/providers.dart';
import '../../data/repository/repositories.dart';
import 'pokemon.dart';

class PokemonBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => PokemonController(
        repository: PokemonRepository(provider: PokemonProvider()),
        pokemonDetailRepository: PokemonDetailRepository(
          provider: PokemonDetailProvider(),
        ),
      ),
    );
  }
}
