import 'package:flutter/material.dart';

class PlayerBarLifeController extends ChangeNotifier {
  static final PlayerBarLifeController _singleton =
      PlayerBarLifeController._internal();

  factory PlayerBarLifeController() {
    return _singleton;
  }

  PlayerBarLifeController._internal();

  double _maxLife = 100;
  get maxLife => _maxLife;

  double _life = 0;

  double get life => _life;

  set life(double newLife) {
    _life = newLife;
    notifyListeners();
  }

  void configure({required double maxLife}) {
    _life = _maxLife = maxLife;
    notifyListeners();
  }

  void updateLife(double life) {
    if (this.life != life) {
      this.life = life;
    }
  }
}
