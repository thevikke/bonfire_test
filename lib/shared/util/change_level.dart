import 'package:flutter/material.dart';

void nextLevel(BuildContext context, Widget level) {
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => level,
      ));
}
