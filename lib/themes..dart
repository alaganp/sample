import 'package:flutter/material.dart';

class ohh extends StatefulWidget {
  const ohh({super.key});

  @override
  State<ohh> createState() => _ohhState();
}

class _ohhState extends State<ohh> {

  ThemeMode _themeMode = ThemeMode.system;
  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [


                ElevatedButton(
                    onPressed: () {
                      changeTheme(ThemeMode.light);
                    },
                    child: Text('L')),
                ElevatedButton(
                    onPressed: () {
                      changeTheme(ThemeMode.dark);
                    },
                    child: Text('D')),

              ],
            ),
          ],
        ),
      ),
    );

  }}


