import 'package:bonfire/bonfire.dart';

class CommonSpriteSheet {
  static Future<SpriteAnimation> get torchAnimated => SpriteAnimation.load(
        "items/torch_spritesheet.png",
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.1,
          textureSize: Vector2(16, 16),
        ),
      );
}
