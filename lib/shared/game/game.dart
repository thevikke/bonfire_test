import 'package:bonfire/bonfire.dart';
import 'package:bonfire_test/interface/player_interface.dart';
import 'package:bonfire_test/shared/player/my_player.dart';
import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  final WorldMapByTiled map;

  const Game({super.key, required this.map});

  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      // showCollisionArea: true,
      joystick: Joystick(
        keyboardConfig: KeyboardConfig(),
        directional: JoystickDirectional(),
      ),
      map: map,
      interface: PlayerInterface(),
      player: MyPlayer(Vector2(740, 440)),
      cameraConfig: CameraConfig(
        moveOnlyMapArea: true,
        zoom: 2,
      ),
    );
  }
}
