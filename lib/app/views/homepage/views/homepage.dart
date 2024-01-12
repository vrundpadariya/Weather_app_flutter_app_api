import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/app/provider/themeprovider/themeprovider.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("weather app"), actions: [
        Switch(
          value: Provider.of<ThemeProvider>(context, listen: true).theme.isdark,
          onChanged: (val) {
            Provider.of<ThemeProvider>(context, listen: false).changeTheme();
          },
        ),
      ]),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              width: double.infinity,
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
