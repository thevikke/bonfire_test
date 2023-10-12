import 'dart:math';

import 'package:bonfire/bonfire.dart';
import 'package:bonfire_test/shared/util/player_sprite_sheet.dart';
import 'package:flutter/material.dart';

Random rnd = Random();

Vector2 randomVector2() => (Vector2.random(rnd) - Vector2.random(rnd)) * 200;

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

  @override
  void update(double dt) {
    super.update(dt);

    gameRef.add(
      ParticleSystemComponent(
        particle: Particle.generate(
          count: 1,
          lifespan: 0.1,
          generator: (i) => AcceleratedParticle(
            acceleration: getRandomVector(),
            speed: getRandomVector(),
            position: (position.clone() + Vector2(size.x / 2, size.y - size.y)),
            child: CircleParticle(
              radius: 1,
              paint: Paint()..color = Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  final _random = Random();

  Vector2 getRandomVector() {
    return (Vector2.random(_random) - Vector2(0.5, -1)) * 200;
  }
}
