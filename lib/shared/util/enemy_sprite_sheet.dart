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

      static Future<SpriteAnimation> get dieAnimation => SpriteAnimation.load(
        "enemy/cumber_yell_die_right.png",
        SpriteAnimationData.sequenced(
          amount: 5,
          stepTime: 0.25,
          textureSize: Vector2.all(32),
        ),
      );
            static Future<SpriteAnimation> get dieAnimationLeft => SpriteAnimation.load(
        "enemy/cumber_yell_die_left.png",
        SpriteAnimationData.sequenced(
          amount: 5,
          stepTime: 0.25,
          textureSize: Vector2.all(32),
        ),
      );

      static SimpleDirectionAnimation get simpleDirectionAnimation =>
      SimpleDirectionAnimation(
        idleRight: idleRight,
        runRight: runRight,
        others: {"die": dieAnimation,
                  "attack": attackAnimation},
      );

  static Future<SpriteAnimation> get attackAnimation => SpriteAnimation.load(
        "enemy/cumber_yell_spit.png",
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.15,
          textureSize: Vector2(32, 32),
        ),
      );

    static Future<SpriteAnimation> get epicAttack => SpriteAnimation.load(
        "enemy/kurkun puhkunta.png", 
       SpriteAnimationData.sequenced(
        amount: 6, 
        stepTime: 0.2, 
        textureSize: Vector2(32,32))
        );

    static Future<SpriteAnimation> get fireBallRight => SpriteAnimation.load(
        "player/fireball_right.png",
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.1,
          textureSize: Vector2(23, 23),
        ),
      );

    static Future<SpriteAnimation> get fireBallLeft => SpriteAnimation.load(
        "player/fireball_left.png",
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.1,
          textureSize: Vector2(23, 23),
        ),
      );

    static Future<SpriteAnimation> get fireBallBottom => SpriteAnimation.load(
        "player/fireball_bottom.png",
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.1,
          textureSize: Vector2(23, 23),
        ),
      );

    static Future<SpriteAnimation> get fireBallTop => SpriteAnimation.load(
        "player/fireball_top.png",
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.1,
          textureSize: Vector2(23, 23),
        ),
      );

      static Future<SpriteAnimation> get explosionAnimation => SpriteAnimation.load(
        "player/explosion_fire.png",
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.1,
          textureSize: Vector2(32, 32),
        ),
      );
}
