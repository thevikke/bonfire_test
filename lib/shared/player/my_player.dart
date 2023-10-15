import 'package:bonfire/bonfire.dart';
import 'package:bonfire_test/controllers/player_bar_life_controller.dart';
import 'package:bonfire_test/shared/util/player_sprite_sheet.dart';
import 'package:flutter/services.dart';

// Random rnd = Random();

// Vector2 randomVector2() => (Vector2.random(rnd) - Vector2.random(rnd)) * 200;

class MyPlayer extends SimplePlayer with BlockMovementCollision, HandleForces {
  double attack = 20;
  bool ableToAttack = true;

  late PlayerBarLifeController barLifeController;

  MyPlayer(Vector2 position)
      : super(
          animation: PlayerSpriteSheet.simpleDirectionAnimation,
          size: Vector2.all(64),
          position: position,
          // life: 200,
          speed: 150,
        );

  @override
  Future<void> onLoad() {
    /// here we configure collision of the player.
    add(RectangleHitbox(size: size));
    return super.onLoad();
  }

  @override
  void onMount() {
    barLifeController = PlayerBarLifeController();
    barLifeController.configure(maxLife: maxLife);
    super.onMount();
  }

  @override
  Future<void> onJoystickAction(JoystickActionEvent event) async {
    // TODO can't do if dead or spinning or doing some other cool stuff.
    if (event.event == ActionEvent.DOWN) {
      if (event.id == LogicalKeyboardKey.space && ableToAttack) {
        // super.stopMove();
        ableToAttack = false;
        speed = 0;
        animation?.playOnceOther("attack");
        execMeleeAttack(attack);
        await Future.delayed(const Duration(milliseconds: 400));
        speed = 150;
        ableToAttack = true;
      }
      if (event.id == LogicalKeyboardKey.keyX) {
        // super.stopMove();
        ableToAttack = false;
        speed = 0;
        animation?.playOnceOther("backflip");
        // execMeleeAttack(attack);

        await Future.delayed(const Duration(milliseconds: 1000));
        speed = 150;
        ableToAttack = true;
      }
    }
    super.onJoystickAction(event);
  }

  void execMeleeAttack(double attack) {
    simpleAttackMelee(
      damage: attack,
      animationRight: PlayerSpriteSheet.epicAttack,
      size: Vector2.all(64),
    );
  }

  @override
  void update(double dt) {
    super.update(dt);
    _updateLife(dt);
  }

  @override
  void die() {
    barLifeController.life = 0.0;
    removeFromParent();
    gameRef.add(
      GameDecoration.withSprite(
        sprite: Sprite.load('player/crypt.png'),
        position: position,
        size: Vector2.all(32),
      ),
    );
    super.die();
  }

  void _updateLife(double dt) {
    barLifeController.updateLife(life);
  }

  // Borrowed code from here: https://github.com/ufrshubham/spacescape/blob/main/lib/game/player.dart.
  // @override
  // void update(double dt) {
  //   super.update(dt);

  //   gameRef.add(
  //     ParticleSystemComponent(
  //       particle: Particle.generate(
  //         count: 1,
  //         lifespan: 0.1,
  //         generator: (i) => AcceleratedParticle(
  //           acceleration: getRandomVector(),
  //           speed: getRandomVector(),
  //           position: (position.clone() + Vector2(size.x / 2, size.y - size.y)),
  //           child: CircleParticle(
  //             radius: 1,
  //             paint: Paint()..color = Colors.white,
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // final _random = Random();

  // Vector2 getRandomVector() {
  //   return (Vector2.random(_random) - Vector2(0.5, -1)) * 200;
  // }
}
