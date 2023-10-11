import 'package:bonfire/bonfire.dart';
import 'package:bonfire_test/shared/levels/level_1.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    await Flame.device.setLandscape();
    await Flame.device.fullScreen();
  }

// flutter build web --web-renderer=canvaskit
  runApp(const MaterialApp(home: Level1()));

  //TODO: Create start game screen where user clicks something so we can start music.
  // FlameAudio.loopLongAudio('test_sound.mp3');
}
