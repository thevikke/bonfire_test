import 'package:bonfire/bonfire.dart';
import 'package:bonfire_test/shared/levels/level_2.dart';
import 'package:bonfire_test/shared/util/change_level.dart';
import 'package:bonfire_test/shared/util/common_spritesheet.dart';
import 'package:flutter/material.dart';

class Torch extends GameDecoration with Lighting, Sensor {
  bool levelTransitionTriggered = false;

  @override
  BuildContext context;
  Torch(Vector2 position, this.context)
      : super.withAnimation(
          animation: CommonSpriteSheet.torchAnimated,
          size: Vector2.all(32),
          position: position,
        ) {
    setupLighting(
      LightingConfig(
        radius: width * 1.5,
        blurBorder: width * 1.5,
        color: Colors.deepOrangeAccent.withOpacity(0.2),
      ),
    );
  }

  @override
  void onContact(GameComponent component) {
    if (!levelTransitionTriggered) {
      // Check the flag before triggering the level transition
      levelTransitionTriggered = true;
      nextLevel(context, const Level2());
    }
  }
}
  //TODO: make game over
  // Also make change route to another game window, which is another level?
  // void _checkGameOver() {
  //   if (gameRef.query<FoxPlayer>().isEmpty && !showGameOver) {
  //     showGameOver = true;
  //     showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: const Text('Game Over'),
  //           actions: [
  //             TextButton(
  //               onPressed: () {
  //                 Navigator.pop(context);
  //               },
  //               child: const Text('OK'),
  //             ),
  //             TextButton(
  //               onPressed: () {
  //                 Navigator.pop(context);
  //                 reset();
  //               },
  //               child: const Text('TRY AGAIN'),
  //             ),
  //           ],
  //         );
  //       },
  //     );
  //   }
  // }
