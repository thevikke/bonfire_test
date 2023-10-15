import 'package:bonfire/bonfire.dart';
import 'package:bonfire_test/controllers/player_bar_life_controller.dart';
import 'package:bonfire_test/shared/util/player_sprite_sheet.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

// Random rnd = Random();

// Vector2 randomVector2() => (Vector2.random(rnd) - Vector2.random(rnd)) * 200;

class MyPlayer extends SimplePlayer with BlockMovementCollision, HandleForces {
  double attack = 20;
  bool ableToDoCoolShit = true;

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
    add(
      RectangleHitbox(
        position: Vector2(16, 16),
        size: Vector2(32, 32),
      ),
    );
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
      if (event.id == LogicalKeyboardKey.space && ableToDoCoolShit) {
        // super.stopMove();
        ableToDoCoolShit = false;
        speed = 0;
        if (lastDirectionHorizontal == Direction.left) {
          animation?.playOnceOther("attack", flipX: true);
        } else {
          animation?.playOnceOther("attack");
        }
        execMeleeAttack(attack);
        await Future.delayed(const Duration(milliseconds: 400));
        speed = 150;
        ableToDoCoolShit = true;
      } else if (event.id == LogicalKeyboardKey.keyX && ableToDoCoolShit) {
        // super.stopMove();
        ableToDoCoolShit = false;
        speed = 0;
        Direction directionBeforeFlip = lastDirection;
        if (lastDirectionHorizontal == Direction.left) {
          animation?.playOnceOther("backflip", flipX: true);
        } else {
          animation?.playOnceOther("backflip");
        }
        await (moveToDirXTimes(lastDirection, 100));
        speed = 150;
        ableToDoCoolShit = true;
        lastDirection = directionBeforeFlip;
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
    void removeLife(double life) {
     showDamage(
       life,
        config: TextStyle(
         fontSize: width / 4,
          color: Colors.red,
       ),
      );
     super.removeLife(life);
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

//TODO: remove this temp function
  Future<void> moveToDirXTimes(Direction dir, double amount) async {
    for (int i = 0; i < amount; i++) {
      _moveToReverseDir(dir, amount);
      await Future.delayed(const Duration(milliseconds: 5));
    }
    return;
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

  void _moveToReverseDir(Direction dir, double speed) {
    switch (dir) {
      case (Direction.up):
        {
          moveDownOnce(speed: 40);
        }
      case (Direction.upLeft):
        {
          moveDownRightOnce(speed: 40);
        }
      case (Direction.left):
        {
          moveRightOnce(speed: 40);
        }
      case (Direction.downLeft):
        {
          moveUpRightOnce(speed: 40);
        }
      case (Direction.down):
        {
          moveUpOnce(speed: 40);
        }
      case (Direction.downRight):
        {
          moveUpLeftOnce(speed: 40);
        }
      case (Direction.right):
        {
          moveLeftOnce(speed: 40);
        }
      case (Direction.upRight):
        {
          moveDownLeftOnce(speed: 40);
        }
    }
  }

  //     Direction _reverseDir(Direction dir, double speed) {
  //   switch(dir){
  //     case(Direction.up):{
  //       return(Direction.down);
  //     }
  //     case(Direction.upLeft):{
  //       return(Direction.downRight);
  //     }
  //     case(Direction.left):{
  //       return(Direction.right);
  //     }
  //     case(Direction.downLeft):{
  //       return(Direction.upRight);
  //     }
  //     case(Direction.down):{
  //       return(Direction.up);
  //     }
  //     case(Direction.downRight):{
  //       return(Direction.upLeft);
  //     }
  //     case(Direction.right):{
  //       return(Direction.left);
  //     }
  //     case(Direction.upRight):{
  //       return(Direction.downLeft);
  //     }
  //   }
  // }
}
