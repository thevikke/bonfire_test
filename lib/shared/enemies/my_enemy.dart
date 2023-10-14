import 'package:bonfire/bonfire.dart';
import 'package:bonfire_test/shared/util/enemy_sprite_sheet.dart';

class MyEnemy extends SimpleEnemy {
  MyEnemy(Vector2 position)
      : super(
          animation: EnemySpriteSheet.simpleDirectionAnimation,
          position: position,
          size: Vector2.all(32),
          life: 100,
        );

  @override
  Future<void> onLoad() {
    /// here we configure collision of the enemy
    add(RectangleHitbox(size: size));
    return super.onLoad();
  }

  @override
  void update(double dt) {
    seeAndMoveToPlayer(
      closePlayer: (player) {
        /// do anything when close to player
      },
      radiusVision: 64,
    );
    super.update(dt);
  }
}
