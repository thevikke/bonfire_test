import 'package:bonfire/bonfire.dart';
import 'package:bonfire_test/shared/util/common_spritesheet.dart';
import 'package:bonfire_test/shared/util/enemy_sprite_sheet.dart';
import 'package:flutter/material.dart';

class MyEnemy extends SimpleEnemy with UseLifeBar {
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
      radiusVision: 128,
    );
    super.update(dt);
  }

  @override
  void removeLife(double life) {
    showDamage(
      life,
      config: TextStyle(
        fontSize: width / 3,
        color: Colors.white,
      ),
    );
    super.removeLife(life);
  }

  @override
  void die() {
    super.die();
    gameRef.add(
      AnimatedGameObject(
        animation: EnemySpriteSheet.dieAnimation,
        position: position,
        size: Vector2.all(32),
        loop: false,
      ),
    );
    removeFromParent();
  }

  // TODO: Add ranged attack to enemy.
  // void execAttackRange(double damage) {
  //   if (gameRef.player != null && gameRef.player?.isDead == true) return;
  //   simpleAttackRange(
  //     animationRight: CommonSpriteSheet.fireBallRight,
  //     animationDestroy: CommonSpriteSheet.explosionAnimation,
  //     id: 35,
  //     size: Vector2.all(width * 0.9),
  //     damage: damage,
  //     speed: DungeonMap.tileSize * 3,
  //     collision: RectangleHitbox(
  //       size: Vector2.all(width / 2),
  //       position: Vector2(width * 0.25, width * 0.25),
  //     ),
  //     lightingConfig: LightingConfig(
  //       radius: width / 2,
  //       blurBorder: width,
  //       color: Colors.orange.withOpacity(0.3),
  //     ),
  //   );
  // }

  // TODO: Add mele attack to enemy.
  // void execAttack(double damage) {
  //   if (gameRef.player != null && gameRef.player?.isDead == true) return;
  //   simpleAttackMelee(
  //     size: Vector2.all(width),
  //     damage: damage / 2,
  //     interval: 400,
  //     sizePush: DungeonMap.tileSize / 2,
  //     animationRight: CommonSpriteSheet.blackAttackEffectRight,
  //   );
  // }
}
