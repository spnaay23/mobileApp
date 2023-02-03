import 'pokemon_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'count.dart';

class PokemonCounter extends StatefulWidget {
  const PokemonCounter({Key? key}) : super(key: key);

  @override
  State<PokemonCounter> createState() => _PokemonCounterState();
}

class _PokemonCounterState extends State<PokemonCounter> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PokemonService>(
      builder: (_, pokemonService, __) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Pokemon Count'),
          ),
          body: const Center(
            child: Count(),
          ),
        );
      },
    );
  }
}
