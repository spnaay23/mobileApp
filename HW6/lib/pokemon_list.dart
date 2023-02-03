import 'pokemon_api.dart';
import 'pokemon_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PokemonList extends StatefulWidget { // change to stateful widget
  const PokemonList({super.key});

  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  int pokemon_select = 1; //setstate start at 1 to list the pokemon

  @override
  Widget build(BuildContext context) {
    return Consumer<PokemonService>(builder: (_, pokemonService, __) {
      return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Pokemon List')),
        ),
        body: GridView.builder(
          // build list pokemon (3 columns)
          itemCount: pokemonService.pokemonCount,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              //catch action of on tap
              onTap: () {
                setState(() {//when we tap to pokemon it's will identify index
                  pokemon_select = index + 1;
                  pokemonService.pokemon_type(pokemon_select);
                });
              },
              child: pokemon_select == index + 1
                  ? Container( // make it can tap (select)
                      child: Image.network(genPokemonImageUrl(index + 1)),
                      decoration: BoxDecoration(border: Border.all(width: 2)), //when we select it will have border in gridview
                    )
                  : Image.network(genPokemonImageUrl(index + 1)), //import image 
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
        ),
      );
    });
  }
}
