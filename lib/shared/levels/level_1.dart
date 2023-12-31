import 'package:bonfire/bonfire.dart';
import 'package:bonfire_test/shared/enemies/my_enemy.dart';
import 'package:bonfire_test/shared/decoration/torch.dart';
import 'package:bonfire_test/shared/game/game.dart';
import 'package:flutter/material.dart';

class Level1 extends StatelessWidget {
  const Level1({super.key});

  @override
  Widget build(BuildContext context) {
    return Game(
      map: WorldMapByTiled(
        'tiled/tiled_projects/Syysjam23Tiled/Syysjam23Map.json',
        forceTileSize: Vector2(
          32,
          32,
        ),
        objectsBuilder: {
          // Loads goblin to a gameobject named 'goblin' in Tiled.
          'goblin(kurkku)': (properties) => MyEnemy(properties.position),
          'giblin(kurkku)': (properties) => MyEnemy(properties.position),
          'gublin(kurkku)': (properties) => MyEnemy(properties.position),
          // 'torch': (properties) => Torch(properties.position, context),
        },
      ),
    );
  }
}
