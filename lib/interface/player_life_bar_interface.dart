import 'package:bonfire/bonfire.dart';
import 'package:bonfire_test/controllers/player_bar_life_controller.dart';
import 'package:flutter/material.dart';

class PlayerBarLifeInterface extends InterfaceComponent {
  final double widthBar = 218;
  final double strokeWidth = 24;
  late PlayerBarLifeController controller;

  PlayerBarLifeInterface()
      : super(
          id: 1,
          position: Vector2(20, 20),
          spriteUnselected: Sprite.load('interface/health_ui.png'),
          size: Vector2(300, 50),
        );

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    try {
      _drawLife(canvas);
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  @override
  void onMount() {
    controller = PlayerBarLifeController();
    super.onMount();
  }

  void _drawLife(Canvas canvas) {
    double xBar = 71;
    double yBar = 22;
    canvas.drawLine(
        Offset(xBar, yBar),
        Offset(xBar + widthBar, yBar),
        Paint()
          ..color = Colors.blueGrey[800]!
          ..strokeWidth = strokeWidth
          ..style = PaintingStyle.fill);

    double currentBarLife = (controller.life * widthBar) / controller.maxLife;

    canvas.drawLine(
        Offset(xBar, yBar),
        Offset(xBar + currentBarLife, yBar),
        Paint()
          ..color = _getColorLife(currentBarLife)
          ..strokeWidth = strokeWidth
          ..style = PaintingStyle.fill);
  }

  Color _getColorLife(double currentBarLife) {
    if (currentBarLife > widthBar - (widthBar / 3)) {
      return Colors.green;
    }
    if (currentBarLife > (widthBar / 3)) {
      return Colors.yellow;
    } else {
      return Colors.red;
    }
  }
}
