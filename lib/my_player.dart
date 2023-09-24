import 'package:bonfire/bonfire.dart';
import 'package:bonfire_test/shared/util/player_sprite_sheet.dart';

class MyPlayer extends SimplePlayer with ObjectCollision {
  MyPlayer(Vector2 position)
      : super(
          animation: PlayerSpriteSheet.simpleDirectionAnimation,
          size: Vector2.all(32),
          position: position,
          life: 200,
        ) {
    /// here we configure collision of the player
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(size: Vector2.all(32)),
        ],
      ),
    );
  }
}
