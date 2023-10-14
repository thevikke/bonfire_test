import 'package:flutter/material.dart';

class PlayerInfoController extends ChangeNotifier {
  static final PlayerInfoController _singleton =
      PlayerInfoController._internal();

  factory PlayerInfoController() {
    return _singleton;
  }

  PlayerInfoController._internal();

  double _enemies = 0;

  double get enemies => _enemies;

  set enemies(double newEnemy) {
    _enemies = newEnemy;
    notifyListeners();
  }

  void updateEnemies(double enemies) {
      this.enemies += enemies;
      notifyListeners();
  }
}
