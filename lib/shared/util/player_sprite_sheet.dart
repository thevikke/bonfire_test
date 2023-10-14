import 'package:bonfire/bonfire.dart';

class PlayerSpriteSheet {
  static Future<SpriteAnimation> get idleLeft => SpriteAnimation.load(
        "player/bear_left.png",
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.25,
          textureSize: Vector2(64, 64),
        ),
      );

  static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
        "player/bear_idle.png",
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.25,
          textureSize: Vector2(64, 64),
        ),
      );

  static Future<SpriteAnimation> get runRight => SpriteAnimation.load(
        "player/bear_walk.png",
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.25,
          textureSize: Vector2(64, 64),
        ),
      );

  static Future<SpriteAnimation> get runLeft => SpriteAnimation.load(
        "player/bear_walk_left.png",
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.25,
          textureSize: Vector2(64, 64),
        ),
      );

static Future<SpriteAnimation> get attackAnimation => SpriteAnimation.load(
        "player/bear_slice.png",
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.25,
          textureSize: Vector2(64, 64),
        ),
      );

  static SimpleDirectionAnimation get simpleDirectionAnimation =>
      SimpleDirectionAnimation(
        idleRight: idleRight,
        runRight: runRight,
        others: {"test": attackAnimation},
);

  static Future<SpriteAnimation> get epicAttack {
    return Sprite.load("player/attack_slice.png", srcSize: Vector2.all(64))
        .then((value) {
      return SpriteAnimation.spriteList([value], stepTime: 1);
    });
  }
}
