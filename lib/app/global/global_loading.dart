import 'package:flutter/material.dart';

class GlobalLoadingGif extends StatelessWidget {
  const GlobalLoadingGif({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset('assets/gifs/gif_poke.gif', height: 100));
  }
}