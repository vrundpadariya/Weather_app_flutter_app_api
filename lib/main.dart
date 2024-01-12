import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/model/theme/theme.dart';
import 'app/model/thememodel/thememodel.dart';
import 'app/provider/themeprovider/themeprovider.dart';
import 'app/views/homepage/views/homepage.dart';
import 'app/views/splash-screen/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool isdark = preferences.getBool('isdark') ?? false;

  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<ThemeProvider>(
          create: (ctx) => ThemeProvider(
            theme: ThemeModel(
              isdark: isdark,
            ),
          ),
        ),
      ],
      builder: (context, widget) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: apptheme.light,
        darkTheme: apptheme.Dark,
        routes: {
          '/': (ctx) => const Splash_screens(),
          'home': (ctx) => const home(),
        },
      ),
    ),
  );
}
