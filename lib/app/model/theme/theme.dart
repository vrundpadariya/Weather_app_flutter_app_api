import 'package:flutter/material.dart';

class apptheme {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: const Color(0xff392467),
  );

  static ThemeData Dark = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    colorSchemeSeed: Colors.purpleAccent,
  );
}
