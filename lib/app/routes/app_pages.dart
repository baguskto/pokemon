import 'package:get/get.dart';

import '../../app/modules/pokemon_detail_page/pokemon_detail_bindings.dart';
import '../../app/modules/pokemon_detail_page/pokemon_detail_page.dart';
import '../../app/modules/pokemon_page/pokemon_bindings.dart';
import '../../app/modules/pokemon_page/pokemon_page.dart';

part './app_routes.dart';

class AppPages {
  AppPages._();

  static final pages = [
    GetPage(
      name: AppRoutes.pokemon,
      page: () => PokemonPage(),
      binding: PokemonBinding(),
    ),
    GetPage(
      name: AppRoutes.pokemonDetail,
      page: () => PokemonDetailPage(),
      binding: PokemonDetailBinding(),
    ),
  ];
}
