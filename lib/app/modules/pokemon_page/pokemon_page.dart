import 'package:pokemon/app/modules/pokemon_page/widgets/appbar_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

import '../../global/global_error.dart';
import '../../global/global_loading.dart';
import '../../routes/app_pages.dart';
import 'pokemon_controller.dart';
import 'widgets/widget_item.dart';

class PokemonPage extends GetWidget<PokemonController> {
  const PokemonPage({super.key});

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = Get.mediaQuery.padding.top;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Positioned(
            top: statusBarHeight - 240 / 2.9,
            left: Get.width - (240 / 1.6),
            child: Opacity(
              opacity: 0.05,
              child: Image.asset(
                'assets/images/pokeball.png',
                height: 240,
                width: 240,
              ),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: statusBarHeight,
                ),
                AppBarHome(),
                Expanded(
                    child: Container(
                        child: controller.obx(
                  (state) => AnimationLimiter(
                    child: GridView.builder(
                      physics: BouncingScrollPhysics(),
                      addAutomaticKeepAlives: false,

                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.6,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                      ),
                      itemCount: state.length,
                      itemBuilder: (context, i) {
                        final item = state[i];
                        return AnimationConfiguration.staggeredGrid(
                          position: i,
                          columnCount: 2,
                          duration: const Duration(milliseconds: 375),
                          child: ScaleAnimation(
                            child: WidgetItem(
                              id: item.id,
                              name: item.name,
                              types: item.types,
                              onTap: () => Get.toNamed(
                                AppRoutes.pokemonDetail,
                                arguments: {'detail': item},
                              ),
                            ),
                          ),
                        );
                      },
                      //         )
                    ),
                  ),
                  onLoading: const GlobalLoadingGif(),
                  onError: (error) {
                    return WidgetGlobalError(
                        reload: controller.fetchAllPokemon(), error: error!);
                  },
                )))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
