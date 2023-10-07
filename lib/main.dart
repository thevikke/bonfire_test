import 'package:bonfire/bonfire.dart';
import 'package:bonfire_test/my_enemy.dart';
import 'package:bonfire_test/my_player.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    await Flame.device.setLandscape();
    await Flame.device.fullScreen();
  }

  runApp(
    const MaterialApp(home: MyGame()),
  );
}

class MyGame extends StatelessWidget {
  const MyGame({super.key});

  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      joystick: Joystick(
        keyboardConfig: KeyboardConfig(),
        directional: JoystickDirectional(),
      ),
      map: WorldMapByTiled(
        'tiled/tiled_projects/test_map/test_map.json',
        forceTileSize: Vector2(32, 32),
        // objectsBuilder: {
        //   'goblin': (properties) => MyEnemy(properties.position),
        // },
      ),
      player: MyPlayer(Vector2(140, 140)),
      cameraConfig: CameraConfig(moveOnlyMapArea: true, zoom: 1.5),
      backgroundColor: const Color.fromARGB(255, 10, 53, 89),
    );
  }
}
