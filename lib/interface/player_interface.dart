import 'package:bonfire/bonfire.dart';
import 'package:bonfire_test/interface/player_life_bar_interface.dart';

class PlayerInterface extends GameInterface {
  @override
  void onMount() async {
    await add(PlayerBarLifeInterface());
  }
}
