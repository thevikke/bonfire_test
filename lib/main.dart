import 'package:bonfire/bonfire.dart';
import 'package:bonfire_test/shared/levels/level_1.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    await Flame.device.setLandscape();
    await Flame.device.fullScreen();
  }

  runApp(const MaterialApp(home: Level1()));
}
