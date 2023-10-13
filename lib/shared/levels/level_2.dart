import 'package:bonfire/bonfire.dart';
import 'package:bonfire_test/my_enemy.dart';
import 'package:bonfire_test/my_player.dart';
import 'package:bonfire_test/shared/game/game.dart';
import 'package:flutter/material.dart';

class Level2 extends StatelessWidget {
  const Level2({super.key});

  @override
  Widget build(BuildContext context) {
    return Game(
      map: WorldMapByTiled(
        'tiled/tiled_projects/test_map/test_map2.json',
        forceTileSize: Vector2(
          32,
          32,
        ),
        objectsBuilder: {
          // Loads goblin to a gameobject named 'goblin' in Tiled.
          'goblin': (properties) => MyEnemy(properties.position),
        },
      ),
    );
  }
}
