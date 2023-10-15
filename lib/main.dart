import 'package:bonfire/bonfire.dart';
import 'package:bonfire_test/shared/game/game.dart';
import 'package:bonfire_test/shared/levels/level_1.dart';
import 'package:bonfire_test/shared/util/change_level.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    await Flame.device.setLandscape();
    await Flame.device.fullScreen();
  }

  FlameAudio.bgm.initialize();
  // flutter build web --web-renderer=canvaskit
  runApp(const MaterialApp(home: Splash()));

  //TODO: Create start game screen where user clicks something so we can start music.
  // FlameAudio.loopLongAudio('test_sound.mp3');
}

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/irorrinesplash.png',
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                padding: const EdgeInsets.all(16.0),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                FlameAudio.bgm.play('ninja_musa_2016_hajaa_edition_loop.mp3');
                nextLevel(
                  context,
                  const Level1(),
                );
              },
              child: const Text('Play'),
            ),
          ],
        ),
      ),
    );
  }
}
