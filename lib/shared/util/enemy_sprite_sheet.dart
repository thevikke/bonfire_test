import 'package:bonfire/bonfire.dart';

class EnemySpriteSheet {
  static Future<SpriteAnimation> get idleLeft => SpriteAnimation.load(
        "enemy/cucumber_yell_idle_left.png",
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.25,
          textureSize: Vector2.all(32),
        ),
      );

  static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
        "enemy/cumber_yell_idle.png",
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.25,
          textureSize: Vector2.all(32),
        ),
      );

  static Future<SpriteAnimation> get runRight => SpriteAnimation.load(
        "enemy/cumber_yell_run.png",
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.25,
          textureSize: Vector2.all(32),
        ),
      );

  static Future<SpriteAnimation> get runLeft => SpriteAnimation.load(
        "enemy/cucumber_yell_run_left.png",
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.25,
          textureSize: Vector2.all(32),
        ),
      );

  static SimpleDirectionAnimation get simpleDirectionAnimation =>
      SimpleDirectionAnimation(
        idleRight: idleRight,
        runRight: runRight,
      );
}
