// -----------------------------------------------------------------------------
// pokemon_api.dart
// -----------------------------------------------------------------------------
//
// This file contains functions for retrieving Pokemon information provided by
// PokeAPI: genPokemonImageUrl and fetchPokemonInfo. The PokemonInfo class is
// a storage returned by fetchPokemonInfo.

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:strings/strings.dart';

// -----------------------------------------------------------------------------
// PokemonInfo
// -----------------------------------------------------------------------------
//
// PokemonInfo class holds Pokemon data retrieved from PokeAPI
class PokemonInfo {
  /// name of Pokemon
  final String name;

  /// lists of type(s) maximum 2 types ['nine', 'dragon']
  final List<String> types;

  /// name of the ability
  final String ability;

  /// create an instance of PokemonInfo with all required parameters
  PokemonInfo({
    required this.name,
    required this.types,
    required this.ability,
  });

  /// Converts list of types to string of types divided by '/'
  String typesToString() {
    return types.map((type) => capitalize(type)).join('/');
  }
}

/// Generates url to pokemon image in PokeAPI github
///
/// [pokemonId] is used as part of image filename.
String genPokemonImageUrl(int pokemonId) {
  return 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/'
      'pokemon/other/official-artwork/$pokemonId.png';
}

/// Fetch information of Pokemon from PokeAPI into PokemonInfo object
///
/// The API request is sent to PokeAPI with Pokedex parameter [pokemonId].
/// If Pokedex number does not exist, [PokemonInfo] object with [name]
/// 'missingno', [types] null and [ability] 'N/A' is returned.
Future<PokemonInfo> fetchPokemonInfo(int pokemonId) async {
  try {
    final response = await http
        .get(Uri.parse('https://pokeapi.co/api/v2/pokemon/$pokemonId'));
    final rawJson = jsonDecode(response.body);
    return PokemonInfo(
      name: rawJson['name'],
      types: rawJson['types']
          .map<String>((element) => element['type']['name'].toString())
          .toList(),
      ability: rawJson['abilities'][0]['ability']['name'],
    );
  } catch (_) {
    return PokemonInfo(
      name: 'missingno',
      types: ['null'],
      ability: 'N/A',
    );
  }
}
