import 'package:bonfire/bonfire.dart';
import 'package:bonfire_test/my_enemy.dart';
import 'package:bonfire_test/my_player.dart';
import 'package:bonfire_test/shared/decoration/torch.dart';
import 'package:flutter/material.dart';

class Level1 extends StatelessWidget {
  const Level1({super.key});

  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      joystick: Joystick(
        keyboardConfig: KeyboardConfig(),
        directional: JoystickDirectional(),
      ),
      map: WorldMapByTiled(
        'tiled/tiled_projects/test_map/test_map.json',
        forceTileSize: Vector2(
          32,
          32,
        ),
        objectsBuilder: {
          // Loads goblin to a gameobject named 'goblin' in Tiled.
          'goblin': (properties) => MyEnemy(properties.position),
          'torch': (properties) => Torch(properties.position, context),
        },
      ),
      player: MyPlayer(Vector2(200, 200)),
      cameraConfig: CameraConfig(
        moveOnlyMapArea: true,
        zoom: 1.5,
      ),
    );
  }
}
