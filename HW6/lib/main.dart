import 'my_bottom_navigation.dart';
import 'pokemon_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyPokemonApp());
}

class MyPokemonApp extends StatefulWidget {
  //chage to stateful widget
  const MyPokemonApp({super.key});

  @override
  State<MyPokemonApp> createState() => _MyPokemonAppState();
}

class _MyPokemonAppState extends State<MyPokemonApp> {
  Map<int, Color> shadeColor = {
    50: const Color.fromRGBO(136, 14, 79, .1),
    100: const Color.fromRGBO(136, 14, 79, .2),
    200: const Color.fromRGBO(136, 14, 79, .3),
    300: const Color.fromRGBO(136, 14, 79, .4),
    400: const Color.fromRGBO(136, 14, 79, .5),
    500: const Color.fromRGBO(136, 14, 79, .6),
    600: const Color.fromRGBO(136, 14, 79, .7),
    700: const Color.fromRGBO(136, 14, 79, .8),
    800: const Color.fromRGBO(136, 14, 79, .9),
    900: const Color.fromRGBO(136, 14, 79, 1),
  }; //for parameter in MaterialColor
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        //return this because it will cover in appBar, home , and navigator bar
        create: (_) => PokemonService(),
        child: Consumer<PokemonService>(
          builder: (_, pokemonService, __) {
            return MaterialApp(
              title: 'Pokemon Demo',
              theme: ThemeData(
                  //changtheme follow the color code (in mat_color and shadeColor)
                  primarySwatch:
                      MaterialColor(pokemonService.mat_color, shadeColor)),
              home: const MyBottomNavigation(),
            );
          },
        ));
  }
}
