import 'package:get/get.dart';

import '../../data/provider/providers.dart';
import '../../data/repository/repositories.dart';
import 'pokemon_detail.dart';

class PokemonDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PokemonDetailController(
        repository:
            PokemonDetailRepository(provider: PokemonDetailProvider())));
  }
}
