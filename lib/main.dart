import 'package:flutter/material.dart';

import 'app/views/splash-screen/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (ctx) => Splash_screens(),
      },
    ),
  );
}
