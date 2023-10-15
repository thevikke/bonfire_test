import 'package:bonfire/bonfire.dart';
import 'package:bonfire_test/controllers/player_info_controller.dart';

class PlayerInfoInterface extends TextInterfaceComponent {
  final String infoText = "Defeated enemies: ";
  double enemies = 0;
  late PlayerInfoController controller;

  PlayerInfoInterface()
      : super(
          id: 2,
          position: Vector2(350, 20),
        );

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    try {
      _addKill(canvas);
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  @override
  void onMount() {
    controller = PlayerInfoController();
    super.onMount();
  }

  void _addKill(Canvas canvas) {
    enemies = controller.enemies;
    text = infoText + enemies.toString();
}
}
