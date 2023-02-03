import 'package:cs311hw06/pokemon_api.dart';
import 'package:flutter/material.dart';

class PokemonService extends ChangeNotifier {
  int pokemonCount = 1;
  late PokemonInfo t_poke;
  String real_type = '';
  int mat_color = 0xff7AC74C;

  void changePokemonCount(int value) {
    pokemonCount += value;
    if (pokemonCount < 0) {
      pokemonCount = 0;
    }
    notifyListeners();
  }

  void pokemon_type(int i) async {
    t_poke = await fetchPokemonInfo(i);
    real_type = t_poke.types[0];
    print(real_type);
    if (real_type == 'normal') {
      mat_color = 0xffA8A77A;
    } else if (real_type == 'fire') {
      mat_color = 0xffEE8130;
    } else if (real_type == 'water') {
      mat_color = 0xff6390F0;
    } else if (real_type == 'electric') {
      mat_color = 0xffF7D02C;
    } else if (real_type == 'grass') {
      mat_color = 0xff7AC74C;
    } else if (real_type == 'ice') {
      mat_color = 0xff96D9D6;
    } else if (real_type == 'fighting') {
      mat_color = 0xffC22E28;
    } else if (real_type == 'poison') {
      mat_color = 0xffA33EA1;
    } else if (real_type == 'ground') {
      mat_color = 0xffE2BF65;
    } else if (real_type == 'flying') {
      mat_color = 0xffA98FF3;
    } else if (real_type == 'psychic') {
      mat_color = 0xffF95587;
    } else if (real_type == 'bug') {
      mat_color = 0xffA6B91A;
    } else if (real_type == 'rock') {
      mat_color = 0xffB6A136;
    } else if (real_type == 'ghost') {
      mat_color = 0xff735797;
    } else if (real_type == 'dragon') {
      mat_color = 0xff6F35FC;
    } else if (real_type == 'dark') {
      mat_color = 0xff705746;
    } else if (real_type == 'steel') {
      mat_color = 0xffB7B7CE;
    } else {
      mat_color = 0xffD685AD7;
    }
    notifyListeners();
  }
}
