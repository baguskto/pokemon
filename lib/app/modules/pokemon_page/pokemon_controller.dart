import 'package:get/get.dart';

import '../../data/models/models.dart';
import '../../data/repository/repositories.dart';

class PokemonController extends GetxController with StateMixin {
  final PokemonRepository _repository;
  final PokemonDetailRepository _pokemonDetailRepository;

  PokemonController(
      {required PokemonRepository repository,
      required PokemonDetailRepository pokemonDetailRepository})
      : _repository = repository,
        _pokemonDetailRepository = pokemonDetailRepository;

  final _isLoading = true.obs;
  final _offset = 0.obs;
  final _pokemon = <PokemonDetail>[].obs;

  int get offset => _offset.value;

  List<PokemonDetail> get pokemon => _pokemon.value;

  @override
  Future onInit() async {
    fetchAllPokemon();
    super.onInit();
  }

  Future<void> fetchAllPokemon() async {
    _pokemon.clear();
    change(null, status: RxStatus.loading());

    try {
      final pokemonResponse =
          await _repository.fetchPokemon(_offset.value, null);
      if (pokemonResponse != null) {
        for (var result in pokemonResponse.results) {
          final pokemonDetail =
              await _pokemonDetailRepository.fetchPokemonDetail(result.name);
          if (pokemonDetail != null) {
            _pokemon.add(pokemonDetail);
          }
        }
      }
      change(_pokemon, status: RxStatus.success());
    } catch (error) {
      change(null, status: RxStatus.error('An error occurred: $error'));
    }
  }
}
