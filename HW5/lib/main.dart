import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(
      items: List<String>.generate(
          150,
          (i) =>
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/${i + 1}.png'),
      // generate a list of 150 Pokemon
    ),
  );
}

class MyApp extends StatefulWidget {
  final List<String> items;

  const MyApp({super.key, required this.items});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<bool> favorite = List<bool>.generate(150, (i) => false);
  int favoriteCount = 0;
  var title = 'Pokemon List';

  void _toggleFavorite(int i, int c) {
    setState(() {
      if (favorite[i * 3 + c]) {
        favoriteCount -= 1;
        favorite[i * 3 + c] = false;
      } else {
        favoriteCount += 1;
        favorite[i * 3 + c] = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    title =
        favoriteCount < 1 ? 'Pokemon List' : 'Pokemon List ($favoriteCount)';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(title)),
        ),
        body: ListView.builder(
          itemCount: widget.items.length ~/
              3, // 3 items per row so we divide the number of items by 3
          itemBuilder: (context, index) {
            return Row(
              children: [
                Expanded(
                    child: Stack(
                  // Stack is for overlaying Favorite icon on top of image
                  children: [
                    Image.network(widget.items[index * 3]),
                    IconButton(
                        onPressed: () {
                          _toggleFavorite(index, 0);
                        },
                        icon: (favorite[index * 3]
                            ? const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 50,
                              )
                            : const Icon(
                                Icons.favorite_border,
                                size: 50,
                              ))),
                  ],
                )),
                Expanded(
                    child: Stack(
                  children: [
                    Image.network(widget.items[index * 3 + 1]),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _toggleFavorite(index, 1);
                          });
                        },
                        icon: (favorite[index * 3 + 1]
                            ? const Icon(Icons.favorite,
                                size: 50, color: Colors.red)
                            : const Icon(Icons.favorite_border, size: 50))),
                  ],
                )),
                Expanded(
                    child: Stack(
                  children: [
                    Image.network(widget.items[index * 3 + 2]),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _toggleFavorite(index, 2);
                          });
                        },
                        icon: (favorite[index * 3 + 2]
                            ? const Icon(Icons.favorite,
                                size: 50, color: Colors.red)
                            : const Icon(Icons.favorite_border, size: 50))),
                  ],
                )),
              ],
            );
          },
        ),
      ),
    );
  }
}
