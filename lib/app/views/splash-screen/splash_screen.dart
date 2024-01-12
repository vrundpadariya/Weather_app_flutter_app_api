import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash_screens extends StatelessWidget {
  const Splash_screens({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, "home");
    });
    return Scaffold(
      backgroundColor: Color(0xff33495f),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/app/asset/aplashscreen.gif"),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Sky Watch",
              style: GoogleFonts.comme(
                color: Colors.white,
                fontSize: 25,
              ),
            )
          ],
        ),
      ),
    );
  }
}
